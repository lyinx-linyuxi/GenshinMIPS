module ram_tb;
    reg [31:0] Addr;
    wire [31:0] Data;
    reg [31:0] Data_i;
    reg R_W;
    reg CLK;
    reg rst;
    integer i;
    integer start;
    initial begin
        i = 0;
        start = 0;
        Addr = 32'b0;
        Data_i = 32'b0;
        CLK = 0;
        rst = 1;
        #10;
        rst   = 0;
        start = 1;
    end
    assign Data = (R_W) ? Data_i : 32'bz;
    always #5 CLK = ~CLK;
    always @(posedge CLK) begin
        if (start == 1) begin
            if (i == 0) begin
                Data_i <= 32'h0000_0077;
                R_W <= 1;
                Addr <= 32'h0000_040a;
                i = i + 1;
            end else if(i == 1) begin
                Data_i <= 32'h0000_0078;
                Addr <= 32'h0000_040b;
                R_W  <= 1;
                i = i + 1;
            end else if(i == 2)begin
                Addr <= 32'h0000_040a;
                i = i + 1;
                R_W  <= 0;
            end else if(i == 3)begin
                Addr <= 32'h0000_040b;
                i = i + 1;
                R_W  <= 0;
            end
        end
    end
    RAM_4Kx32_inout aaaa (
        .Data(Data),
        .Addr(Addr[11:0]),
        .Rst (rst),
        .R_W (R_W),
        .CLK (CLK)
    );
endmodule
