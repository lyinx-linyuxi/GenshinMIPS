module Ins_gen(
    input CLK,
    input RST,
    input wire [31:0] PCSrc_immediate,
    input wire [25:0] Jump_immediate,
    input wire PCSrc,Jump,
    output [31:0] instruction,Input_Addr,Ins_Addr,PCBranch,PCplus4,Jump_addr
);
    // wire [31:0] Input_Addr, Ins_Addr;
    // wire [31:0] PCBranch,PCplus4,Jump_addr;
    wire [27:0] temp;
    assign temp = Jump_immediate << 2;
    assign PCplus4 = Ins_Addr + 4;
    assign PCBranch = (PCSrc_immediate << 2) + PCplus4;
    assign Jump_addr = {PCplus4[31:28], temp[27:0]};
    assign Input_Addr = Jump ? Jump_addr : (PCSrc ? PCBranch : PCplus4);

    PC PC1(
        .RST(RST),
        .CLK(CLK),
        .Input_Addr(Input_Addr),
        .Ins_Addr(Ins_Addr)
    );

    IMem IMem1(
        .A(Ins_Addr[7:2]),
        .RD(instruction)
    );

endmodule