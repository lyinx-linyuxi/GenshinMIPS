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
        $readmemb(
                    "D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/PipelinedMIPSCPU/RAM_init.bin",
                    RAM
                );
    end

    // posedge to read
    always @(posedge CLK) begin
        casex ({CS, Rst, R_W})
            4'b100: Data_i <= RAM[Addr];
            default: Data_i <= 32'bz;
        endcase
        $writememb(
            "D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/PipelinedMIPSCPU/RAM_DUMP.bin",
            RAM);
    end

    // negedge to write
    always @(negedge CLK)begin
        if(R_W == 1'b1 && CS == 1'b1 && Rst == 1'b0 )begin
            RAM[Addr] <= Data;
        end
        $writememb(
            "D:/Developer/repos/code-in-vsc/Verilog/Computer Organization and Architecture/lab6/PipelinedMIPSCPU/RAM_DUMP.bin",
            RAM);
    end

endmodule
