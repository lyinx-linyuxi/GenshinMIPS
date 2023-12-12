module PipelinedMIPSCPU_tb;
    reg [31:0] ins_set[10:0];
    reg CLK, RST;
    reg [31:0] IM_RD, DM_RD;
    wire MemWriteM;
    wire [31:0] ALUOutM, WriteDataM, PCF, InstrD;

    integer i;
    integer start;

    PipelinedMIPSCPU tst1(
        .CLK(CLK),
        .RST(RST),
        .IM_RD(IM_RD),
        .DM_RD(DM_RD),
        .MemWriteM(MemWriteM),
        .ALUOutM(ALUOutM),
        .WriteDataM(WriteDataM),
        .PCF(PCF),
        .InstrD(InstrD)
    );


    initial begin
        $readmemb("D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/PipelinedMIPSCPU/test.bin", ins_set);
        CLK = 0;
        RST = 1;
        i = 0;
        start = 0;       
        IM_RD = ins_set[i];
        DM_RD = 32'h0000_0002;
        #10 RST = 0;
        start = 1;
    end
    always #5 CLK = ~CLK;
    always @(posedge CLK) begin
        if (start) begin
            for(i=0;i<11;i=i+1)begin
                IM_RD = ins_set[i];
                #10;
            end
        end
    end


endmodule