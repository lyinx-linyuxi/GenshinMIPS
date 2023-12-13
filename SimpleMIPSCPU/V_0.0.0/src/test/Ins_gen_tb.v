module Ins_gen_tb;
    reg CLK,RST;
    reg [31:0] alu_result, data,PCSrc_immediate;
    reg [25:0] Jump_immediate;
    reg PCSrc,Jump;
    wire [31:0] instruction,Input_Addr,Ins_Addr,PCBranch,PCplus4,Jump_addr;
    
    Ins_gen aaa(
        .CLK(CLK),
        .PCSrc_immediate(PCSrc_immediate),
        .Jump_immediate(Jump_immediate),
        .PCSrc(PCSrc),
        .Jump(Jump),
        .instruction(instruction),
        .Input_Addr(Input_Addr),
        .Ins_Addr(Ins_Addr),
        .PCBranch(PCBranch),
        .PCplus4(PCplus4),
        .Jump_addr(Jump_addr)
    );
    reg [31:0] ins[63:0];
   always #5 CLK = ~CLK;
    integer i;
    integer start;
    initial begin
        // 修改project_path为你的工程路径
        // $readmemb("D:project_path/SimpleMIPSCPU/V_0.0.0/scripts/test.bin", ins);
        alu_result = 0;
        data = 0;
        PCSrc_immediate = 0;
        PCSrc =0;
        Jump = 0;
        Jump_immediate = 0;
        CLK=0;
        RST=1;
        start = 0;
        #10 RST=0;
        start = 1;
        
        #10;
        PCSrc_immediate = 16;
        PCSrc = 1;
        
        #10;
        PCSrc = 0;
        Jump = 1;
        Jump_immediate = 4;
        
        
    end
endmodule