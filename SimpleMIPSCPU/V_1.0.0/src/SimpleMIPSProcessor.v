module SimpleMIPSProcessor(
    input CLK, RST,
    input [31:0] instruction, ReadData,
    output MemWrite,
    output [31:0] ALUOut, WriteData, Ins_Addr
);

    wire MemToReg, PCSrc, ALUSrc, RegDst, RegWrite, Jump;
    wire [3:0] ALUControl;
    wire Zero;
    
    Controller ctrl (
        .Op(instruction[31:26]),
        .Funct(instruction[5:0]),
        .Zero(Zero),
        .MemToReg(MemToReg),
        .MemWrite(MemWrite),
        .PCSrc(PCSrc),
        .ALUSrc(ALUSrc),
        .RegDst(RegDst),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ALUControl(ALUControl)
    );

    DataPath dp(
        .CLK(CLK),
        .RST(RST),
        .MemToReg(MemToReg),
        .PCSrc(PCSrc),
        .ALUSrc(ALUSrc),
        .RegDst(RegDst),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ALUControl(ALUControl),
        .instruction(instruction),
        .ReadData(ReadData),
        .ALUOut(ALUOut),
        .WriteData(WriteData),
        .Ins_Addr(Ins_Addr),
        .Zero(Zero)
    );

endmodule