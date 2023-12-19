module MultiCycleMIPSCPU (
    input CLK,
    RST,
    output [31:0] ALUOut,
    output [31:0] ALUResult
);
    wire  next_ins;
    wire [31:0] instruction;
    // control signals
    wire MemToReg, RegDst, IorD, ALUSrcA;
    wire [1:0] ALUSrcB, PCSrc;
    wire IRWrite, MemWrite, PCWrite, Branch, RegWrite;
    wire [1:0] ALUOp;
    wire [3:0] ALUControl;

    // instruction division
    wire [5:0] opcode, funct;
    wire  [4:0] rs,rt,rd;
    wire [2:0] state;


    next_state next_state_1(
        .CLK(CLK),
        .RST(RST),
        .next_ins(next_ins),
        .next_state(state)
    );

    // always @(posedge CLK or posedge RST) begin
    //     if (RST || next_ins) begin
    //         state <= 0;
    //     end else begin
    //         state = state + 1;
    //     end
    // end

    CodeDiv CodeDiv_1(
        .CLK(CLK),
        .RST(RST),
        .state(state),
        .instruction(instruction),
        .opcode(opcode),
        .funct(funct),
        .rs(rs),
        .rt(rt),
        .rd(rd)
    );

    // always @(posedge CLK or posedge RST) begin
    //     if(RST) begin
    //         opcode <= 6'bz;
    //         rs <= 5'bz;
    //         rt <= 5'bz;
    //         rd <= 5'bz;
    //         funct <= 6'bz;
    //     end
    //     else if (state == 1) begin
    //         opcode <= instruction[31:26];
    //         rs <= instruction[25:21];
    //         rt <= instruction[20:16];
    //         rd <= instruction[15:11];
    //         funct <= instruction[5:0];
    //     end
    // end

    Multi_Controller Multi_Controller_1(
        .Op(opcode),
        .Funct(funct),
        .state(state),
        .MemToReg(MemToReg),
        .RegDst(RegDst),
        .IorD(IorD),
        .ALUSrcA(ALUSrcA),
        .ALUSrcB(ALUSrcB),
        .PCSrc(PCSrc),
        .IRWrite(IRWrite),
        .MemWrite(MemWrite),
        .PCWrite(PCWrite),
        .Branch(Branch),
        .RegWrite(RegWrite),
        .ALUOp(ALUOp),
        .ALUControl(ALUControl),
        .next_ins(next_ins)
    );
    
    
    
    wire [31:0] RD1, RD2, SrcA, SrcB, immediate, PC_in, PC_out, PCJump, MemRD;
    wire [31:0] A, B;
    wire Zero, PC_En;
    reg [31:0] Data;
    // reg [31:0] ALUOut;
    assign PC_En = (Zero & Branch) | PCWrite;
    assign immediate = {{16{instruction[15]}}, instruction[15:0]};
    assign PCJump = {PC_out[31:28], instruction[25:0], 2'b00};
    assign SrcA = ALUSrcA ? A : PC_out;

    multiplexer41 multiplexer41_1(
        .in_1(RD2),
        .in_2(4),
        .in_3(immediate),
        .in_4(immediate << 2),
        .Sel(ALUSrcB),
        .out(SrcB)
    );

    // assign SrcB = (ALUSrcB == 2'b00) ? RD2 :
    //               (ALUSrcB == 2'b01) ? 4 :
    //               (ALUSrcB == 2'b10) ? immediate :
    //                                    immediate << 2;

    multiplexer41 multiplexer41_2(
        .in_1(ALUResult),
        .in_2(ALUOut),
        .in_3(PCJump),
        .in_4(32'bz),
        .Sel(PCSrc),
        .out(PC_in)
    );
    


    // assign PC_in = (PCSrc == 2'b00) ? ALUResult :
    //                (PCSrc == 2'b01) ? ALUOut :
    //                (PCSrc == 2'b10) ? PCJump :
    //                                   32'bz;

    RegFile rf(
        .CLK(CLK),
        .WE3(RegWrite),
        .rst(RST),
        .RA1(rs),
        .RA2(rt),
        .WA3(RegDst ? rd : rt),
        .WD3(MemToReg ? Data : ALUOut),
        .RD1(RD1),
        .RD2(RD2)
    );

     regs_clk regs_clk_1(
         .CLK(CLK),
         .RD1(RD1),
         .RD2(RD2),
         .ALUOut(ALUOut),
         .A(A),
         .B(B),
         .ALUResult(ALUResult)
     );

//    always @(posedge CLK)begin
//        A <= RD1;
//        B <= RD2;
//        ALUOut <= ALUResult;
//    end

    ALU alu(
        .OP(ALUControl),
        .A(SrcA),
        .B(SrcB),
        .F(ALUResult),
        .ZF(Zero),
        .CF(),
        .OF(),
        .SF(),
        .PF()
    );

    PC pc1(
        .CLK(CLK),
        .RST(RST),
        .En(PC_En),
        .Input_Addr(PC_in),
        .Ins_Addr(PC_out)
    );

    assign MemRD = (MemWrite) ? B : 32'bz;

    RAM ram(
        .CLK(CLK),
        .Rst(RST),
        .Addr(IorD ? ALUResult[11:0] : PC_out[13:2]),
        .Data(MemRD),
        .R_W(MemWrite),
        .CS(1'b1)
    );

    // IR instruction register
    IR IR_1(
        .CLK(CLK),
        .En(IRWrite),
        .MemRD(MemRD),
        .instruction(instruction)
    );
    // always @(*)begin 
    //     if(IRWrite)begin
    //         instruction = MemRD;
    //     end
    // end    

    // MDR memory data register
    always @(posedge CLK) begin
        Data <= MemRD;
    end


endmodule
