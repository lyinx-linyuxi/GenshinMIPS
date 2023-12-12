module top_tb;
    reg CLK, RST;

    initial begin
        CLK = 0;
        RST = 1;
        #10 RST = 0;
    end

    always #5 CLK = ~CLK;

    top top1(
        .CLK(CLK),
        .RST(RST)
    );

endmodule