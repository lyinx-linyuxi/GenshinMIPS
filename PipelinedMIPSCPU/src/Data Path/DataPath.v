module DataPath(
    input CLK, RST,
    // IF
    input PCSrcD, JumpD, StallF, StallD,
    input [31:0] IM_RD,
    output [31:0] PCF,
    // ID
    input RegWriteW, ForwardAD, ForwardBD,
    output [31:0] InstrD,
    output EqualD,
    output [4:0] RsD, RtD, RdD,
    output [5:0] Op, Funct,
    // EX
    input ALUSrcE, RegDstE, FlushE,
    input [3:0] ALUControlE,
    input [1:0] ForwardAE, ForwardBE,
    output [4:0] RsE, RtE, RdE, WriteRegE,
    // MEM
    input [31:0] DM_RD,
    output [4:0] WriteRegM,
    output [31:0] ALUOutM, WriteDataM,
    // WB
    input MemToRegW,
    output [4:0] WriteRegW
);
    wire [31:0] PC_in,PCBranchD, PCPlus4F;
    
    wire [31:0] immediateD, RD1, RD2, PCPlus4D;
    
    wire [31:0] WriteDataE, RD1E, RD2E, immediateE;
    wire [31:0] SrcAE, SrcBE, ALUOutE;

    wire [31:0] ReasultW, ReadDataW, ALUOutW;

    /* ************* */
    /*    IF begin   */
    /* ************* */

    wire [31:0] PCBranch_addr, Jump_addr;
    assign Jump_addr = {PCPlus4D[31:28], InstrD[25:0], 2'b00};
    // branch address
    multiplexer21 #(.WIDTH(32)) mux21_2(
        .Sel(PCSrcD),
        .in_1(PCPlus4F),
        .in_2(PCBranchD),
        .out(PCBranch_addr)
    );

    multiplexer21 #(.WIDTH(32)) mux21_7(
        .Sel(JumpD),
        .in_1(PCBranch_addr),
        .in_2(Jump_addr),
        .out(PC_in)
    );

    addr_32bit adder_32bit_1(
        .A(PCF),
        .B(32'h0000_0004),
        .Ci(1'b0),
        .S(PCPlus4F),
        .Co()
    );

    // pc
    PC pc(
        .CLK(CLK),
        .RST(RST),
        .EN(StallF),
        .Input_Addr(PC_in),
        .Ins_Addr(PCF)
    );

    /* ************* */
    /*    IF end     */
    /* ************* */

    // IF_ID seperation

    IF_ID_DP if_id_dp(
        .CLK(CLK),
        .RST(RST),
        .EN(StallD),
        .CLR(PCSrcD || JumpD),
        .IM_RD(IM_RD),
        .PCPlus4F(PCPlus4F),
        .PCPlus4D(PCPlus4D),
        .InstrD(InstrD)
    );

    
    /* ************* */
    /*    ID begin   */
    /* ************* */

    assign Op = InstrD[31:26];
    assign Funct = InstrD[5:0];
    assign RsD = InstrD[25:21];
    assign RtD = InstrD[20:16];
    assign RdD = InstrD[15:11];

    // immediate sign extend
    assign immediateD = { {16{InstrD[15]}}, InstrD[15:0] };

    wire [31:0] immediateD_27;

    LeftShift leftshift(
        .in(immediateD),
        .shamt(2),
        .out(immediateD_27)
    );

    addr_32bit adder_32bit_2(
        .A(PCPlus4D),
        .B(immediateD_27),
        .Ci(1'b0),
        .S(PCBranchD),
        .Co()
    );

    // registers
    RegFile rf(
        .CLK(CLK),
        .WE3(RegWriteW),
        .rst(RST),
        .RA1(RsD),
        .RA2(RtD),
        .WA3(WriteRegW),
        .WD3(ReasultW),
        .RD1(RD1),
        .RD2(RD2)
    );

    // beq Zero judge
    wire [31:0] testA, testB;

    multiplexer21 #(.WIDTH(32)) mux21_3(
        .Sel(ForwardAD),
        .in_1(RD1),
        .in_2(ALUOutM),
        .out(testA)
    );

    multiplexer21 #(.WIDTH(32)) mux21_4(
        .Sel(ForwardBD),
        .in_1(RD2),
        .in_2(ALUOutM),
        .out(testB)
    );
    
    Compare compare(
        .A(testA),
        .B(testB),
        .S(EqualD)
    );

    
    /* ************* */
    /*    ID end     */
    /* ************* */

    // ID_EX seperation
    ID_EX_DP id_ex_dp(
        .CLK(CLK),
        .CLR(FlushE),
        .RsD(RsD),
        .RtD(RtD),
        .RdD(RdD),
        .RD1(RD1),
        .RD2(RD2),
        .immediateD(immediateD),
        .RsE(RsE),
        .RtE(RtE),
        .RdE(RdE),
        .RD1E(RD1E),
        .RD2E(RD2E),
        .immediateE(immediateE)
    );

    /* ************* */
    /*    EX begin   */
    /* ************* */

    multiplexer21 #(.WIDTH(5)) mux21_1(
        .Sel(RegDstE),
        .in_1(RtE),
        .in_2(RdE),
        .out(WriteRegE)
    );

    multiplexer41 mux41_1(
        .Sel(ForwardAE),
        .in_1(RD1E),
        .in_2(ReasultW),
        .in_3(ALUOutM),
        .in_4(32'bz),
        .out(SrcAE)
    );

    multiplexer41 mux41_2(
        .Sel(ForwardBE),
        .in_1(RD2E),
        .in_2(ReasultW),
        .in_3(ALUOutM),
        .in_4(32'bz),
        .out(WriteDataE)
    );

    multiplexer21 #(.WIDTH(32)) mux21_5(
        .Sel(ALUSrcE),
        .in_1(WriteDataE),
        .in_2(immediateE),
        .out(SrcBE)
    );

    // assign SrcBE = (ALUSrcE ? immediateE : WriteDataE);

    ALU alu(
        .OP(ALUControlE),
        .A(SrcAE),
        .B(SrcBE),
        .F(ALUOutE),
        .ZF(),
        .CF(),
        .OF(),
        .SF(),
        .PF()
    );

    /* ************* */
    /*    EX end     */
    /* ************* */


    // EX_MEM seperation
    EX_MEM_DP ex_mem_dp(
        .CLK(CLK),
        .WriteRegE(WriteRegE),
        .ALUOutE(ALUOutE),
        .WriteDataE(WriteDataE),
        .WriteRegM(WriteRegM),
        .ALUOutM(ALUOutM),
        .WriteDataM(WriteDataM)
    );

    /* ************* */
    /*    MEM begin  */
    /* ************* */

    /* ************* */
    /*    MEM end    */
    /* ************* */

    // MEM_WB seperation
    MEM_WB_DP mem_wb_dp(
        .CLK(CLK),
        .WriteRegM(WriteRegM),
        .ALUOutM(ALUOutM),
        .DM_RD(DM_RD),
        .WriteRegW(WriteRegW),
        .ALUOutW(ALUOutW),
        .ReadDataW(ReadDataW)
    );

    /* ************* */
    /*   WB begin    */
    /* ************* */

    multiplexer21 #(.WIDTH(32)) mux21_6(
        .Sel(MemToRegW),
        .in_1(ALUOutW),
        .in_2(ReadDataW),
        .out(ReasultW)
    );

    // assign ReasultW = (MemToRegW ? ReadDataW : ALUOutW);

    /* ************* */
    /*   WB end      */
    /* ************* */

endmodule