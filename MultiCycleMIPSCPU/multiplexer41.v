module multiplexer41(
    input [31:0] in_1, in_2, in_3, in_4,
    input [1:0] Sel,
    output reg [31:0]  out
);

    always @(*)begin
        case(Sel)
            2'b00: out = in_1;
            2'b01: out = in_2;
            2'b10: out = in_3;
            2'b11: out = in_4;
        endcase
    end


endmodule