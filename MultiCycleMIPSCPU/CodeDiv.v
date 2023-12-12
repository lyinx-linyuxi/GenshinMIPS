module CodeDiv(
    input CLK, RST,
    input [2:0] state,
    input [31:0] instruction,
    output reg [5:0] opcode, funct,
    output reg [4:0] rs, rt, rd
);

    always @(*) begin
        if(RST) begin
            opcode <= 6'bz;
            rs <= 5'bz;
            rt <= 5'bz;
            rd <= 5'bz;
            funct <= 6'bz;
        end
        else if (state == 1) begin
            opcode <= instruction[31:26];
            rs <= instruction[25:21];
            rt <= instruction[20:16];
            rd <= instruction[15:11];
            funct <= instruction[5:0];
        end
    end

endmodule