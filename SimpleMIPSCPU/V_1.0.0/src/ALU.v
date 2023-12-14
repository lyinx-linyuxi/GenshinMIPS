module ALU(OP, A, B, F, ZF, CF, OF, SF, PF);
    parameter SIZE = 32;
    input [3:0] OP;
    input [SIZE-1:0] A;
    input [SIZE-1:0] B;
    output [SIZE-1:0] F;
    output ZF,
           CF,
           OF,
           SF,
           PF;

    reg [SIZE-1:0] F;
    reg C, ZF, CF, OF, SF, PF;

    always @(*)
    begin
        C = 0;
        case(OP)
            4'b0000: begin F = A&B; end
            4'b0001: begin F = A|B; end
            4'b0010: begin {C,F} = A + B; end 
            4'b0011: begin F = ~(A|B); end 
            4'b0100: begin F = A^B; end
            4'b0101: begin F = A < B; end
            4'b0110: begin {C,F} = A - B; end 
            4'b0111: begin F = B << A; end 
            default: begin F = 0; end
        endcase
        ZF = F == 0; 
        CF = C; 
        OF = A[SIZE-1]^B[SIZE-1]^F[SIZE-1]^C;
        SF = F[SIZE-1];
        PF = ~^F; 
    end
endmodule