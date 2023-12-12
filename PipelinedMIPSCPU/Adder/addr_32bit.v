module addr_32bit(
    input [31:0] A,
    input [31:0] B,
    input Ci,
    output [31:0] S,
    output Co);
    wire C;
    addr_16bit A16B1(.S(S[15:0]),.Co(C),.A(A[15:0]),.B(B[15:0]),.Ci(Ci)),
              A16B2(.S(S[31:16]),.Co(Co),.A(A[31:16]),.B(B[31:16]),.Ci(C));
endmodule