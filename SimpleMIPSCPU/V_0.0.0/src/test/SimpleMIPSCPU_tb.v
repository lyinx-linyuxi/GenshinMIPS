module SimpleMIPSCPU_tb;
    reg CLK,rst;
    wire Zero;
    reg [31:0] instruction;
    wire MemToReg, MemWrite, PCSrc, ALUSrc, RegDst, RegWrite, Jump;
    wire [3:0] ALUControl;
    wire [31:0] SrcA, SrcB, alu_result, immediate, data;
    wire [3:0] decoout;
    SimpleMIPSCPU cpu(
        .clk(CLK),
        .rst(rst),
        .instruction(instruction),
        .Zero(Zero),
        .MemToReg(MemToReg),
        .MemWrite(MemWrite),
        .PCSrc(PCSrc),
        .ALUSrc(ALUSrc),
        .RegDst(RegDst),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ALUControl(ALUControl),
        .SrcA(SrcA),
        .SrcB(SrcB),
        .alu_result(alu_result),
        .immediate(immediate),
        .data(data),
        .decoout(decoout)
    );
    reg [31:0] ins[16:0];
   always #5 CLK = ~CLK;
    integer i;
    integer start;
    initial begin
        // 修改project_path为你的工程路径
        // $readmemb("D:project_path/SimpleMIPSCPU/V_0.0.0/scripts/test.bin", ins);
        CLK=1;
        rst=1;
        start = 0;
        #10 rst=0;
        instruction=0;
        start = 1;
    end
    always @(posedge CLK) begin
        if (start)begin 
        for(i=0;i<17;i=i+1) begin
            instruction=ins[i];
            #10;
        end       
         $finish;

        end
    end
endmodule