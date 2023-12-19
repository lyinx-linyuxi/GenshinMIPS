module Multi_MainDec_tb;
    reg [5:0] Op_tem [5:0];
    reg [5:0] Op;
    reg [2:0] state;
    wire MemToReg, RegDst, IorD, ALUSrcA;
    wire [1:0] ALUSrcB, PCSrc;
    wire IRWrite, MemWrite, PCWrite, Branch, RegWrite;
    wire [1:0] ALUOp;
    wire next_ins;

    Multi_MainDec uut (
        .Op(Op),
        .state(state),
        .MemToReg(MemToReg),
        .RegDst(RegDst),
        .IorD(IorD),
        .ALUSrcA(ALUSrcA),
        .ALUSrcB(ALUSrcB),
        .PCSrc(PCSrc),
        .IRWrite(IRWrite),
        .MemWrite(MemWrite),
        .PCWrite(PCWrite),
        .Branch(Branch),
        .RegWrite(RegWrite),
        .ALUOp(ALUOp),
        .next_ins(next_ins)
    );
    integer i;
    
    initial begin
        i = 0;
        Op_tem[0] = 6'b000000;
        Op_tem[1] = 6'b001000;
        Op_tem[2] = 6'b100011;
        Op_tem[3] = 6'b101011;
        Op_tem[4] = 6'b000100;        
        Op_tem[5] = 6'b000010;
        Op = Op_tem[i];
        state = 3'b000;
    end

    always begin
        #5 state = state + 1;
        if (next_ins == 1 || state > 3'b100)
        begin 
            i=i+1;
            Op = Op_tem[i];
            state = 0;
        end
    end
endmodule