module EX_MEM_CU(
    input CLK,
    input RegWriteE, MemToRegE, MemWriteE,
    output reg RegWriteM, MemToRegM, MemWriteM
);

    always @(posedge CLK) begin
        RegWriteM <= RegWriteE;
        MemToRegM <= MemToRegE;
        MemWriteM <= MemWriteE;
    end

endmodule