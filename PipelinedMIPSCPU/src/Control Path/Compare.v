module Compare(
    input [31:0] A,
    input [31:0] B,
    output S);
    assign S = (A == B);
    
    endmodule