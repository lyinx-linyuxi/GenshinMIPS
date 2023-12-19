module Multi_Controller( 
    input [5:0] Op, Funct,
    input [2:0] state,
    output MemToReg, RegDst, IorD, ALUSrcA,
    output [1:0] ALUSrcB, PCSrc,
    output IRWrite, MemWrite, PCWrite, Branch, RegWrite,
    output [1:0] ALUOp,
    output [3:0] ALUControl,
    output next_ins // if code ends, enable fetch to set state back to 0 
);

    // wire [1:0] ALUOp;
    // wire Branch;


    Multi_MainDec Multi_MainDec_1(
        .Op(Op),
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
        .next_ins(next_ins)
    );

    Multi_ALUDec Multi_ALUDec_1(
        .Funct(Funct),
        .ALUOp(ALUOp),
        .ALUControl(ALUControl)
    );

endmodule
