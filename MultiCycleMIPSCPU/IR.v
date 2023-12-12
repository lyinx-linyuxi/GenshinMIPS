module IR(
    input CLK,
    input En,
    input [31:0] MemRD,
    output reg [31:0] instruction
);


    always @(posedge CLK) begin
        if (En) begin
            instruction <= MemRD;
        end
    end

endmodule