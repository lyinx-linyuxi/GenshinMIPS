module RAM_1Kx16_inout (Data,Addr,Rst,R_W,CS,CLK); 
    parameter Addr_Width = 10;  // size of address space
    parameter Data_Width = 16;  // size of data bus
    parameter SIZE = 2 ** Addr_Width;  // memory size 1024
    inout [Data_Width-1:0] Data;  // bidirectional data bus
    input [Addr_Width-1:0] Addr;  // address bus
    input Rst;  // reset signal
    input R_W;  // read or write control
    input CS;  // chip select signal
    input CLK;  // clock signal

    integer i;  // loop variable for initialization
    reg [Data_Width-1:0] Data_i;

    reg [Data_Width-1:0] RAM[SIZE-1:0];  // memory array declaration

    assign Data = (R_W) ? 16'bzzzz_zzzz_zzzz_zzzz : ((CS) ? RAM[Addr] : 16'bz);
//or posedge R_W or negedge R_W
    always @(negedge CLK) begin
        casex ({CS, Rst, R_W})
            4'bx1x:  for (i = 0; i <= SIZE - 1; i = i + 1) RAM[i] = 0;
            4'b100:  Data_i <= RAM[Addr];  // read operation
            4'b101:  RAM[Addr] <= Data;  // write operation
            default: Data_i = 16'bz;
        endcase
    end
endmodule
