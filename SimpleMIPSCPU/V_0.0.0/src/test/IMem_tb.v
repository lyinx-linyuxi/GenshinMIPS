module IMem_tb;
    reg clk;
    reg [5:0] A;
    wire [31:0] instruction;
    IMem aaaa(
        .A(A),
        .RD(instruction)
    );
    integer i;
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        A = 0;
    end
    always @(posedge clk)begin
        A = A + 1;
    end
endmodule