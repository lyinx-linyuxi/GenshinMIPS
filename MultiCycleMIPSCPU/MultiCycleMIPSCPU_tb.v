module MultiCycleMIPSCPU_tb;
    reg CLK, RST;
    reg [31:0] ins_set[20:0];
    wire [31:0] alu_result, aluout;

    MultiCycleMIPSCPU test1 (
        .CLK(CLK),
        .RST(RST),
        .ALUResult(alu_result),
        .ALUOut(aluout)
    );
    integer i, start;

    initial begin
        $readmemb(
            "D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/MultiCycleMIPSCPU/test.bin",
            ins_set);
        CLK = 0;
        start = 0;
        i = 0;
        RST = 0;
        #5 RST = 1;
//        instruction = ins_set[i];
          #15 RST = 0;
//        start = 1;
    end

    always #5 CLK = ~CLK;

//    always @(posedge CLK) begin
//        if (next_ins == 1) begin
//            i = i + 1;
//            instruction = ins_set[i];
//        end
//    end
endmodule
