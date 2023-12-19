module regs_clk(
    input CLK,
    input [31:0] RD1, RD2, ALUResult,
    output reg  [31:0] A, B, ALUOut
);
    always @(posedge CLK) begin
        A <= RD1;
        B <= RD2;
        ALUOut <= ALUResult;
    end

endmodule