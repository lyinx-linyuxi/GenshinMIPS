module fulladder(S,Co,A,B,Ci);
    input A,B,Ci;
    output S,Co;
    wire S1,D1,D2;
    halfadder HA1(S1,D1,A,B);
    halfadder HA2(.S(S),.C(D2),.A(S1),.B(Ci));
    or(Co,D2,D1);
endmodule