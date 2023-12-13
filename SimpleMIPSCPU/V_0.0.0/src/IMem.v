`define Data_Width 32
module IMem (
    input [5:0] A,
    output [`Data_Width-1:0] RD);

    parameter IMEM_SIZE = 64;


    reg [`Data_Width-1:0] RAM[IMEM_SIZE-1:0];
    initial begin
        // 修改project_path为你的工程路径
        // $readmemb("project_path/SimpleMIPSCPU/V_0.0.0/scripts/test.bin",RAM);
    end
    assign RD = RAM[A];
    
endmodule