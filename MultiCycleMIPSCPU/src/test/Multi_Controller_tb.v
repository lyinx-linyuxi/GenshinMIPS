module Multi_Controller_tb;
    reg [5:0] Op_tem[5:0];
    reg [5:0] Op;
    reg [5:0] Funct;
    reg [5:0] Funct_tem[5:0];
    reg [2:0] state;
    wire MemToReg, RegDst, IorD, ALUSrcA;
    wire [1:0] ALUSrcB, PCSrc;
    wire IRWrite, MemWrite, PCWrite, Branch, RegWrite;
    wire [1:0] ALUOp;
    wire next_ins;
    wire [2:0] ALUControl;

    Multi_Controller uut (
        .Op(Op),
        .Funct(Funct),
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
        .next_ins(next_ins),
        .ALUControl(ALUControl)
    );
    integer i, j;

    initial begin
        i = 0;
        j = 0;
        Op_tem[0] = 6'b000000;
        Op_tem[1] = 6'b001000;
        Op_tem[2] = 6'b100011;
        Op_tem[3] = 6'b101011;
        Op_tem[4] = 6'b000100;
        Op_tem[5] = 6'b000010;
        Op = Op_tem[i];
        Funct_tem[0] = 6'b100000;
        Funct_tem[1] = 6'b100010;
        Funct_tem[2] = 6'b100100;
        Funct_tem[3] = 6'b100101;
        Funct_tem[4] = 6'b101010;
        Funct_tem[5] = 6'b000000;
        Funct = Funct_tem[j];
        state = 3'b000;
    end

    always begin
        if (i == 0) begin
            for (j = 0; j < 6; j = j + 1) begin
                Funct = Funct_tem[j];
                #5 state = state + 1;
                #5 state = state + 1;
                #5 state = state + 1;
                #5 state = state + 1;
                state = 0;
            end
            i = i + 1;
        end else begin
            #5 state = state + 1;
            if (next_ins == 1 || state > 3'b100) begin
                i = i + 1;
                Op = Op_tem[i];
                state = 0;
            end
        end
    end

endmodule
