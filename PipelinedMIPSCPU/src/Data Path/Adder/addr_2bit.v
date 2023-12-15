module addr_2bit(S,Co,A,B,Ci);
    input [1:0] A,B;
    input Ci;
    output [1:0] S;
    output Co;
    wire C;
    fulladder FA0(S[0],C,A[0],B[0],Ci),
              FA1(S[1],Co,A[1],B[1],C);
endmodule