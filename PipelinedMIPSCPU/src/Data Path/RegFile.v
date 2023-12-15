`define DATA_WIDTH 32

module RegFile 
    #(parameter ADDR_SIZE =5)
    (input CLK,WE3,rst,
    input [ADDR_SIZE-1:0]RA1,RA2,WA3,
    input [`DATA_WIDTH-1:0]WD3,
    output [`DATA_WIDTH-1:0]RD1,RD2);
    
    
    reg [`DATA_WIDTH-1:0]rf[2 ** ADDR_SIZE-1:0];
    integer i;

    // posedge for rst
    always @(posedge CLK)begin
        if(rst)begin
            $readmemb("D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/PipelinedMIPSCPU/reg.bin",rf);
        end
    end

    // negedge to write
    always@(negedge CLK)begin
        // if(WE3)rf[WA3]<=WD3;
        if(WE3)begin
            rf[WA3]<=WD3;       
        end
        $writememb("D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/PipelinedMIPSCPU/reg_modified.bin",rf);
    end
 
    // continuous assignment to read
    assign RD1=(RA1!=0)?rf[RA1]:0;
    assign RD2=(RA2!=0)?rf[RA2]:0;
endmodule
