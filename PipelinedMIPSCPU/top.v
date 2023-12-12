module top(
    input CLK, RST
);

    wire [31:0] IM_RD, DM_RD;
    wire MemWriteM;
    wire [31:0] ALUOutM, WriteDataM, PCF, InstrD;

    PipelinedMIPSCPU cpu(
        .CLK(CLK),
        .RST(RST),
        .IM_RD(IM_RD),
        .DM_RD(DM_RD),
        .MemWriteM(MemWriteM),
        .ALUOutM(ALUOutM),
        .WriteDataM(WriteDataM),
        .PCF(PCF),
        .InstrD(InstrD)
    );

    IMem im(
        .A(PCF[7:2]),
        .RD(IM_RD)
    );

    wire [31:0] Data;
    assign Data = (MemWriteM ? WriteDataM : 32'bz);
    assign DM_RD = (MemWriteM ? 32'bz : Data);

    RAM ram(
        .CLK(CLK),
        .Rst(RST),
        .Addr(ALUOutM[11:0]),
        .Data(Data),
        .R_W(MemWriteM),
        .CS(1'b1)
    );

endmodule