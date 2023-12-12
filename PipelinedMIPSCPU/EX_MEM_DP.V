module EX_MEM_DP(
    input CLK,
    input [4:0] WriteRegE,
    input [31:0] ALUOutE, WriteDataE,
    output reg [4:0] WriteRegM,
    output reg [31:0] ALUOutM, WriteDataM
);

    always @(posedge CLK) begin
        WriteRegM <= WriteRegE;
        ALUOutM <= ALUOutE;
        WriteDataM <= WriteDataE;
    end

endmodule