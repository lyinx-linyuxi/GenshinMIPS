module MEM_WB_DP(
    input CLK,
    input [31:0] ALUOutM, DM_RD,
    input [4:0] WriteRegM,
    output reg [31:0] ALUOutW, ReadDataW,
    output reg [4:0] WriteRegW
);

    always @(posedge CLK) begin
        ALUOutW <= ALUOutM;
        ReadDataW <= DM_RD;
        WriteRegW <= WriteRegM;
    end

endmodule