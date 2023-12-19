`define DATA_WIDTH 32

module RegFile 
    #(parameter ADDR_SIZE =5)
    (input CLK,WE3,rst,
    input [ADDR_SIZE-1:0]RA1,RA2,WA3,
    input [`DATA_WIDTH-1:0]WD3,
    output [`DATA_WIDTH-1:0]RD1,RD2);
    
    
    reg [`DATA_WIDTH-1:0]rf[2 ** ADDR_SIZE-1:0];
    integer i;

    always@(negedge CLK)begin
        // if(WE3)rf[WA3]<=WD3;
        if(rst)begin
            // 修改project path为项目路径
            // $readmemb("project path/MultiCycleMIPSCPU/scripts/reg.bin",rf);
        end
        else if(WE3)begin
            rf[WA3]<=WD3;       
        end
        // 修改project path为项目路径
        // $writememb("project path/MultiCycleMIPSCPU/scripts/reg_modified.bin",rf);
    end
 
    assign RD1=(RA1!=0)?rf[RA1]:0;
    assign RD2=(RA2!=0)?rf[RA2]:0;
endmodule
