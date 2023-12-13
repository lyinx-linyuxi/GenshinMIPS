module computer_tb;
    reg CLK;
    reg RST;
    wire [31:0] instruction, Input_Addr, Ins_Addr, PCSrc_immediate;
    wire [25:0] Jump_immediate;
    wire PCSrc, Jump;

    initial begin
        CLK = 0;
        RST = 1;
        #10 RST = 0;
    end

    always begin
        #5 CLK = ~CLK;
    end

    computer computer1(
        .CLK(CLK),
        .RST(RST),
        .instruction(instruction),
        .Input_Addr(Input_Addr),
        .Ins_Addr(Ins_Addr),
        .PCSrc_immediate(PCSrc_immediate),
        .Jump_immediate(Jump_immediate),
        .PCSrc(PCSrc),
        .Jump(Jump)
    );

    endmodule