module computer(
    input CLK,
    input RST,
    output wire [31:0] instruction, Input_Addr, Ins_Addr, PCSrc_immediate, alu_result,
    output wire [25:0] Jump_immediate,
    output wire PCSrc, Jump
);

    // wire [31:0] PCSrc_immediate;
    // wire [25:0] Jump_immediate;
    // wire PCSrc, Jump;

    Ins_gen Ins_gen1(
        .CLK(CLK),
        .RST(RST),
        .PCSrc_immediate(PCSrc_immediate),
        .Jump_immediate(Jump_immediate),
        .PCSrc(PCSrc),
        .Jump(Jump),
        .instruction(instruction),
        .Input_Addr(Input_Addr),
        .Ins_Addr(Ins_Addr)
    );

    SimpleMIPSCPU SimpleMIPSCPU1(
        .clk(CLK),
        .rst(RST),
        .instruction(instruction),
        .Jump_immediate(Jump_immediate),
        .immediate(PCSrc_immediate),
        .PCSrc(PCSrc),
        .Jump(Jump),
        .alu_result(alu_result)
    );

endmodule