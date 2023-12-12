module multiplexer21
    #(parameter WIDTH = 32)
    (input [WIDTH-1:0] in_1, in_2,
    input Sel,
    output reg [WIDTH-1:0]  out
);

    always @(*)begin
        case(Sel)
            1'b0: out = in_1;
            1'b1: out = in_2;
        endcase
    end


endmodule