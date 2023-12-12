module top(
    input CLK, RST
);

    wire MemWrite;
    wire [31:0] ReadData, instruction, ALUOut, WriteData, Ins_Addr, Data;
    assign ReadData = (MemWrite) ? 32'bz : Data;
    assign Data = (MemWrite) ? WriteData : 32'bz;

    SimpleMIPSProcessor processor(
        .CLK(CLK),
        .RST(RST),
        .instruction(instruction),
        .MemWrite(MemWrite),
        .ALUOut(ALUOut),
        .WriteData(WriteData),
        .ReadData(ReadData),
        .Ins_Addr(Ins_Addr)
    );

    RAM_4Kx32_inout ram(
        .Data(Data),
        .Addr(ALUOut),
        .Rst(RST),
        .R_W(MemWrite),
        .CS(1'b1),
        .CLK(CLK)
    );

    IMem im(
        .A(Ins_Addr[7:2]),
        .RD(instruction)
    );


endmodule