module next_state(
    input CLK, RST,
    input next_ins,
    output [2:0] next_state
);

    reg [2:0] state;

    always @(posedge CLK or posedge RST) begin
        if (RST || next_ins) begin
            state <= 0;
        end else begin
            state = state + 1;
        end
    end

    assign next_state = state;

endmodule