module PipelinedMIPSCPU(
    input CLK, RST,
    input [31:0] IM_RD, DM_RD,
    output MemWriteM,
    output [31:0] ALUOutM, WriteDataM, PCF, InstrD
);

    wire ALUSrcE, FlushE, ForwardAD, ForwardBD, JumpD, MemToRegW, PCSrcD, RegDstE, RegWriteW, StallD, StallF;
    wire [3:0] ALUControlE;
    wire [1:0] ForwardAE, ForwardBE;

    wire EqualD;
    wire [4:0] RsD, RsE, RtD, RtE, WriteRegE, WriteRegM, WriteRegW;
    wire [5:0] Op, Funct;

    DataPath dp(
        .CLK(CLK),
        .RST(RST),
        .PCSrcD(PCSrcD),
        .JumpD(JumpD),
        .StallF(StallF),
        .StallD(StallD),
        .IM_RD(IM_RD),
        .PCF(PCF),
        .RegWriteW(RegWriteW),
        .ForwardAD(ForwardAD),
        .ForwardBD(ForwardBD),
        .InstrD(InstrD),
        .EqualD(EqualD),
        .RsD(RsD),
        .RtD(RtD),
        .RdD(RdD),
        .Op(Op),
        .Funct(Funct),
        .ALUSrcE(ALUSrcE),
        .RegDstE(RegDstE),
        .FlushE(FlushE),
        .ALUControlE(ALUControlE),
        .ForwardAE(ForwardAE),
        .ForwardBE(ForwardBE),
        .RsE(RsE),
        .RtE(RtE),
        .RdE(RdE),
        .WriteRegE(WriteRegE),
        .DM_RD(DM_RD),
        .WriteRegM(WriteRegM),
        .ALUOutM(ALUOutM),
        .WriteDataM(WriteDataM),
        .MemToRegW(MemToRegW),
        .WriteRegW(WriteRegW)
    );

    ControlPath cp(
        .CLK(CLK),
        .Op(Op),
        .Funct(Funct),
        .EqualD(EqualD),
        .PCSrcD(PCSrcD),
        .JumpD(JumpD),
        .ALUSrcE(ALUSrcE),
        .RegDstE(RegDstE),
        .ALUControlE(ALUControlE),
        .MemWriteM(MemWriteM),
        .RegWriteW(RegWriteW),
        .MemToRegW(MemToRegW),
        .RsD(RsD),
        .RtD(RtD),
        .RsE(RsE),
        .RtE(RtE),
        .WriteRegE(WriteRegE),
        .WriteRegM(WriteRegM),
        .WriteRegW(WriteRegW),
        .FlushE(FlushE),
        .StallD(StallD),
        .StallF(StallF),
        .ForwardAD(ForwardAD),
        .ForwardBD(ForwardBD),
        .ForwardAE(ForwardAE),
        .ForwardBE(ForwardBE)
    );


endmodule