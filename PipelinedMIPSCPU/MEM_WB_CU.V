module MEM_WB_CU(
    input CLK,
    input RegWriteM, MemToRegM,
    output reg RegWriteW, MemToRegW
);

    always @(posedge CLK) begin
        RegWriteW <= RegWriteM;
        MemToRegW <= MemToRegM;
    end

endmodule