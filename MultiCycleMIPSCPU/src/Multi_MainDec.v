module Multi_MainDec (
    input [5:0] Op,
    input [2:0] state,
    output MemToReg, RegDst, IorD, ALUSrcA,
    output [1:0] ALUSrcB, PCSrc,
    output IRWrite, MemWrite, PCWrite, Branch, RegWrite,
    output [1:0] ALUOp,
    output next_ins  // if code ends, enable fetch to set state back to 0
);

    reg [7:0] Mul_Selector;
    reg [6:0] Reg_En;
    reg fetch;
    assign next_ins = fetch;
    assign {MemToReg, RegDst, IorD, PCSrc, ALUSrcB, ALUSrcA} = Mul_Selector;
    assign {IRWrite, MemWrite, PCWrite, Branch, RegWrite, ALUOp} = Reg_En;

    always @(*) begin
        case (state)
            3'b000:  // IF
                begin
                    Mul_Selector = 8'b00000010;
                    Reg_En = 7'b1010000;
                    fetch = 1'b0;
                end
            3'b001:  // ID
                begin
                    Mul_Selector = 8'b00000110;
                    Reg_En = 7'b0000000;
                    fetch = 1'b0;
                end
            3'b010:  // EX
            case (Op)
                6'b000000:  // R-type
                        begin
                    Mul_Selector = 8'b00000001;
                    Reg_En = 7'b0000010;
                    fetch = 1'b0;
                end
                6'b100011:  // lw
                        begin
                    Mul_Selector = 8'b00000101;
                    Reg_En = 7'b0000000;
                    fetch = 1'b0;
                end
                6'b101011:  // sw
                        begin
                    Mul_Selector = 8'b00000101;
                    Reg_En = 7'b0000000;
                    fetch = 1'b0;
                end
                6'b000100:  // beq
                        begin
                    Mul_Selector = 8'b00001001;
                    Reg_En = 7'b0001001;
                    fetch = 1'b1;
                end
                6'b001000:  // addi
                        begin
                    Mul_Selector = 8'b00000101;
                    Reg_En = 7'b0000000;
                    fetch = 1'b0;
                end
                6'b000010:  // j
                        begin
                    Mul_Selector = 8'b00010000;
                    Reg_En = 7'b0010000;
                    fetch = 1'b1;
                end
                default: begin
                    Mul_Selector = 8'bx;
                    Reg_En = 7'bx;
                    fetch = 1'b1;
                end
            endcase
            3'b011:  // MEM
            case (Op)
                6'b000000:  // R-type
                        begin
                    Mul_Selector = 8'b01000001;
                    Reg_En = 7'b0000110;
                    fetch = 1'b1;
                end
                6'b100011:  // lw
                        begin
                    Mul_Selector = 8'b00100101;
                    Reg_En = 7'b0000000;
                    fetch = 1'b0;
                end
                6'b101011:  // sw
                        begin
                    Mul_Selector = 8'b00100101;
                    Reg_En = 7'b0100000;
                    fetch = 1'b1;
                end
                6'b001000:  // addi
                        begin
                    Mul_Selector = 8'b00000101;
                    Reg_En = 7'b0000100;
                    fetch = 1'b1;
                end
                default: begin
                    Mul_Selector = 8'bx;
                    Reg_En = 7'bx;
                    fetch = 1'b1;
                end
            endcase
            3'b100:  // WB
            case (Op)
                6'b100011:  // lw
                        begin
                    Mul_Selector = 8'b10100101;
                    Reg_En = 7'b0000100;
                    fetch = 1'b1;
                end
                default: begin
                    Mul_Selector = 8'bx;
                    Reg_En = 7'bx;
                    fetch = 1'b1;
                end
            endcase
        endcase
    end
endmodule
