module PC (
    input CLK, RST, EN,
    input [31:0] Input_Addr,
    output [31:0] Ins_Addr
);
    reg [31:0] temp;
    always @(posedge CLK) begin
        if (RST) begin
            temp <= 0;
        end else if (!EN) begin
            temp <= Input_Addr;
        end
    end
    assign Ins_Addr = temp;

endmodule
