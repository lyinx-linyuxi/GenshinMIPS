module LeftShift(
    input [31:0] in,
    input [4:0] shamt,
    output [31:0] out
);

    assign out = in << shamt;

endmodule