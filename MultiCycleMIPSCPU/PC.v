module PC(
    input CLK,RST,En,
    input [31:0] Input_Addr,
    output [31:0] Ins_Addr
);

    reg [31:0] temp;
    
    always @(posedge CLK or posedge RST) begin
        if (En) begin
            if (RST) begin
                temp <= 0;
            end else begin
                temp <= Input_Addr;
            end
        end
    end
    assign Ins_Addr = temp;

endmodule
