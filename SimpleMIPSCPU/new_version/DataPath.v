module DataPath(
    input CLK, RST,
    input MemToReg, PCSrc, ALUSrc, RegDst, RegWrite, Jump,
    input [3:0] ALUControl,
    output Zero,
    input [31:0] instruction, ReadData,
    output [31:0] ALUOut, WriteData, Ins_Addr
);



    // decode instruction
    reg [5:0] opcode, funct;
    reg [4:0] rs, rt, rd;
    
    wire [31:0] Input_Addr;
    wire [31:0] PCBranch,PCplus4,Jump_addr, immediate;
    wire [27:0] temp;

    assign immediate = {{16{instruction[15]}}, instruction[15:0]};
    assign temp = instruction[25:0] << 2;
    assign PCplus4 = Ins_Addr + 4;
    assign PCBranch = (immediate << 2) + PCplus4;
    assign Jump_addr = {PCplus4[31:28], temp[27:0]};
    assign Input_Addr = Jump ? Jump_addr : (PCSrc ? PCBranch : PCplus4);


    PC pc(
        .CLK(CLK),
        .RST(RST),
        .Input_Addr(Input_Addr),
        .Ins_Addr(Ins_Addr)
    );

    always @(*) begin
        // extract opcode, rs, rt, rd, funct
        opcode <= instruction[31:26];
        rs <= instruction[25:21];
        rt <= instruction[20:16];
        rd <= instruction[15:11];
        funct <= instruction[5:0];
    end

    // register file
    wire [31:0] SrcA, SrcB;
    assign WriteData = SrcB;

    RegFile registers (
        .CLK(CLK),
        .rst(RST),
        .WE3(RegWrite),
        .RA1(rs),
        .RA2(rt),
        .WA3(RegDst ? rd : rt),
        .WD3(MemToReg ? ReadData : ALUOut),
        .RD1(SrcA),
        .RD2(SrcB)
    );

    // ALU instance
    ALU alu (
        .A (SrcA),
        .B (ALUSrc ? immediate : SrcB),
        .OP(ALUControl),
        .F (ALUOut),
        .ZF(Zero),
        .CF(),
        .OF(),
        .SF(),
        .PF()
    );

endmodule
    