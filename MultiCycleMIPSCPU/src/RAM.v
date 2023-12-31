module RAM (
    input wire CLK,
    input wire Rst,
    input wire [11:0] Addr,
    inout wire [31:0] Data,
    input wire R_W,
    input wire CS
);

    reg [31:0] RAM[4095:0];
    reg [31:0] Data_i;

    assign Data = (R_W) ? 32'bzzzz_zzzz_zzzz_zzzz_zzzz_zzzz_zzzz_zzzz : RAM[Addr];

    initial begin 
        // 修改project path为项目路径
        // $readmemb(
        //             "project path/GenshinMIPS/MultiCycleMIPSCPU/scripts/RAM_init.bin",
        //             RAM
        //         );
    end
    integer i;
    always @(posedge CLK) begin
        casex ({CS, Rst, R_W})
            4'bx1x: Data_i <= 0;
            4'b100: Data_i <= RAM[Addr];  // read operation
            4'b101: RAM[Addr] <= Data;  // write operation
            default: Data_i <= 32'bz;
        endcase
        // 修改project path为项目路径
        // $writememb(
        //             "project path/GenshinMIPS/MultiCycleMIPSCPU/scripts/RAM_DUMP.bin",
        //    RAM);

    end

endmodule
