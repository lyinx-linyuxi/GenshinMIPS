module IF_ID_DP(
    input CLK, EN, CLR, RST,
    input [31:0] IM_RD, PCPlus4F,
    output reg [31:0] PCPlus4D, InstrD
);

    always @(posedge CLK) begin
        if (RST) begin
            InstrD <= 0;
        end 
        if (CLR) begin
            PCPlus4D <= 0;
            InstrD <= 0;
        end else if (!EN) begin
            PCPlus4D <= PCPlus4F;
            InstrD <= IM_RD;
        end
    end 

endmodule