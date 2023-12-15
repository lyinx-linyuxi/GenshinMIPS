module addr_16bit(
    input [15:0] A,
    input [15:0] B,
    input Ci,
    output [15:0] S,
    output Co);
    wire C;
    addr_8bit A8B1(.S(S[7:0]),.Co(C),.A(A[7:0]),.B(B[7:0]),.Ci(Ci)),
              A8B2(.S(S[15:8]),.Co(Co),.A(A[15:8]),.B(B[15:8]),.Ci(C));
endmodule