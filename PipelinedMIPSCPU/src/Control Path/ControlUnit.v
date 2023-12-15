module ControlUnit( 
    input [5:0] Op, Funct,
    input EqualD,
    output MemToRegD, MemWriteD,
    output PCSrcD, ALUSrcD,
    output RegDstD, RegWriteD,
    output JumpD, BranchD,
    output [3:0] ALUControlD
);

    wire [1:0] ALUOpD;

    MainDec MainDec_1(Op, MemToRegD, MemWriteD, BranchD, ALUSrcD, RegDstD, RegWriteD, JumpD, ALUOpD);
    ALUDec ALUDec_1(Funct, ALUOpD, ALUControlD);

    assign PCSrcD = BranchD & EqualD;
endmodule
