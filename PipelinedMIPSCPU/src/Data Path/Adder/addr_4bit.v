module addr_4bit(S,Co,A,B,Ci);
    input [3:0] A,B;
    input Ci;
    output [3:0] S;
    output Co;
    wire C;
    addr_2bit A2B1(.S(S[1:0]),.Co(C),.A(A[1:0]),.B(B[1:0]),.Ci(Ci)),
              A2B2(.S(S[3:2]),.Co(Co),.A(A[3:2]),.B(B[3:2]),.Ci(C));
endmodule