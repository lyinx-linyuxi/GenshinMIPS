module ID_EX_DP(
    input CLK, CLR,
    input [4:0] RsD, RtD, RdD,
    input [31:0] RD1, RD2, immediateD,
    output reg [4:0] RsE, RtE, RdE,
    output reg [31:0] RD1E, RD2E, immediateE
);

    always @(posedge CLK) begin
        if (CLR) begin
            RsE = 5'b00000;
            RtE = 5'b00000;
            RdE = 5'b00000;
            RD1E = 32'h0000_0000;
            RD2E = 32'h0000_0000;
            immediateE = 32'h0000_0000;
        end else begin
            RsE <= RsD;
            RtE <= RtD;
            RdE <= RdD;
            RD1E <= RD1;
            RD2E <= RD2;
            immediateE <= immediateD;
        end
    end

endmodule