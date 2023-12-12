`define Data_Width 32
module IMem (
    input [5:0] A,
    output [`Data_Width-1:0] RD);

    parameter IMEM_SIZE = 64;


    reg [`Data_Width-1:0] RAM[IMEM_SIZE-1:0];
    initial begin
        $readmemb("D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/SimpleMIPSCPU/test.bin",RAM);
    end
    assign RD = RAM[A];
    
endmodule