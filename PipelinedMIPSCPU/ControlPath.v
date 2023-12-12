module ControlPath(
    input CLK,
    input [5:0] Op, Funct,
    input EqualD,
    output PCSrcD, JumpD,
    output ALUSrcE, RegDstE,
    output [3:0] ALUControlE,
    output MemWriteM, RegWriteW, MemToRegW,

    input [4:0] RsD, RtD, RsE, RtE,WriteRegE, WriteRegM, WriteRegW,
    output FlushE, StallD, StallF, ForwardAD, ForwardBD,
    output [1:0] ForwardAE, ForwardBE
);
    wire  RegWriteD, MemToRegD, MemWriteD, ALUSrcD, RegDstD, BranchD;
    wire [3:0] ALUControlD;

    ControlUnit ctrl(
        .Op(Op),
        .Funct(Funct),
        .EqualD(EqualD),
        .MemToRegD(MemToRegD),
        .MemWriteD(MemWriteD),
        .PCSrcD(PCSrcD),
        .ALUSrcD(ALUSrcD),
        .RegDstD(RegDstD),
        .RegWriteD(RegWriteD),
        .JumpD(JumpD),
        .BranchD(BranchD),
        .ALUControlD(ALUControlD)
    );

    wire RegWriteE, MemToRegE, MemWriteE;

    ID_EX_CU id_ex_cu(
        .CLK(CLK),
        .CLR(FlushE),
        .RegWriteD(RegWriteD),
        .MemToRegD(MemToRegD),
        .MemWriteD(MemWriteD),
        .ALUSrcD(ALUSrcD),
        .RegDstD(RegDstD),
        .ALUControlD(ALUControlD),
        .RegWriteE(RegWriteE),
        .MemToRegE(MemToRegE),
        .MemWriteE(MemWriteE),
        .ALUSrcE(ALUSrcE),
        .RegDstE(RegDstE),
        .ALUControlE(ALUControlE)
    );

    EX_MEM_CU ex_mem_cu(
        .CLK(CLK),
        .RegWriteE(RegWriteE),
        .MemToRegE(MemToRegE),
        .MemWriteE(MemWriteE),
        .RegWriteM(RegWriteM),
        .MemToRegM(MemToRegM),
        .MemWriteM(MemWriteM)
    );

    MEM_WB_CU mem_wb_cu(
        .CLK(CLK),
        .RegWriteM(RegWriteM),
        .MemToRegM(MemToRegM),
        .RegWriteW(RegWriteW),
        .MemToRegW(MemToRegW)
    );

    HazardUnit hu(
        .BranchD(BranchD),
        .RsD(RsD),
        .RtD(RtD),
        .RsE(RsE),
        .RtE(RtE),
        .WriteRegE(WriteRegE),
        .RegWriteE(RegWriteE),
        .MemToRegE(MemToRegE),
        .WriteRegM(WriteRegM),
        .RegWriteM(RegWriteM),
        .MemToRegM(MemToRegM),
        .WriteRegW(WriteRegW),
        .RegWriteW(RegWriteW),
        .StallD(StallD),
        .StallF(StallF),
        .ForwardAD(ForwardAD),
        .ForwardBD(ForwardBD),
        .ForwardAE(ForwardAE),
        .ForwardBE(ForwardBE),
        .FlushE(FlushE)
    );

     

endmodule