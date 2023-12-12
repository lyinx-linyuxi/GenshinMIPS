module addr_8bit(
    input [7:0] A,
    input [7:0] B,
    input Ci,
    output [7:0] S,
    output Co);
    wire C;
    addr_4bit A4B1(.S(S[3:0]),.Co(C),.A(A[3:0]),.B(B[3:0]),.Ci(Ci)),
              A4B2(.S(S[7:4]),.Co(Co),.A(A[7:4]),.B(B[7:4]),.Ci(C));
endmodule