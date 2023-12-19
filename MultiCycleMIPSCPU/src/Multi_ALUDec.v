module Multi_ALUDec (  //ALUFS
    input [5:0] Funct,
    input [1:0] ALUOp,
    output reg [3:0] ALUControl
);

    always @(*) begin
        case (ALUOp)
            2'b00: begin // add (for lw/sw/addi)
                ALUControl <= 4'b0010;
            end  
            2'b01: begin // sub (for beq)
                ALUControl <= 4'b0110;
            end  
            default: begin
                case (Funct)  // R-type Instructions
                    6'b100000: ALUControl <= 4'b0010;  // add
                    6'b100010: ALUControl <= 4'b0110;  // sub
                    6'b100100: ALUControl <= 4'b0000;  // and
                    6'b100101: ALUControl <= 4'b0001;  // or
                    6'b101010: ALUControl <= 4'b0111;  // slt
                    default:   ALUControl <= 4'bxxxx;  // ???
                endcase
            end
        endcase
    end

endmodule
