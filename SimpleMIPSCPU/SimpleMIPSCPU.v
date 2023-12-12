module SimpleMIPSCPU (
    input wire clk,  // clock
    input wire rst,  // reset
    output Zero,
    input wire [31:0] instruction,  // 32-bit instruction
    output wire RegWrite, MemToReg, MemWrite, ALUSrc, PCSrc, Jump, RegDst,
    output wire [3:0] ALUControl,
    output wire [31:0] SrcA, SrcB,
    output wire [31:0] alu_result,
    output wire [31:0] immediate,
    output wire [25:0] Jump_immediate,
    output wire [31:0] data  // 32-bit data
);
    //output reg [31:0] data  // 32-bit data

    // control signals
    // wire RegWrite, MemToReg, MemWrite, ALUSrc, PCSrc, Jump, Zero;
    reg [5:0] opcode;
    reg [4:0] rs, rt, rd;
    reg [5:0] funct;
    assign Jump_immediate = instruction[25:0];

    // immediate
    // wire [31:0] immediate;

    // ALU control
    // wire [31:0] alu_result;

    // data read in registers
    wire [31:0] SrcA, SrcB;

     RegFile registers (
         .CLK(clk),
         .rst(rst),
         .WE3(RegWrite),
         .RA1(rs),
         .RA2(rt),
         .WA3(RegDst ? rd : rt),
         .WD3(MemToReg ? data : alu_result),
         .RD1(SrcA),
         .RD2(SrcB)
     );

    // ALU instance
    ALU alu (
        .A (SrcA),
        .B (ALUSrc ? immediate : SrcB),
        .OP(ALUControl),
        .F (alu_result),
        .ZF(Zero),
        .CF(),
        .OF(),
        .SF(),
        .PF()
    );

    // main controller
    Controller ctrl (
        .Op(opcode),
        .Funct(funct),
        .Zero(Zero),
        .MemToReg(MemToReg),
        .MemWrite(MemWrite),
        .PCSrc(PCSrc),
        .ALUSrc(ALUSrc),
        .RegDst(RegDst),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ALUControl(ALUControl)
    );
    // wire [31:0] data_inout;
    assign data = (MemWrite) ? SrcB : 32'bzzzz_zzzz_zzzz_zzzz_zzzz_zzzz_zzzz_zzzz ;
    // data memory
    RAM_4Kx32_inout dmem (
        .Data(data),
        .Addr(alu_result[11:0]),
        .Rst (rst),
        .R_W (MemWrite),
        .CS  (1'b1),
        .CLK (clk)
    );

    assign immediate = {{16{instruction[15]}}, instruction[15:0]};
    // instruction divided
    always @(*) begin
        // extract opcode, rs, rt, rd, funct
        opcode <= instruction[31:26];
        rs <= instruction[25:21];
        rt <= instruction[20:16];
        rd <= instruction[15:11];
        funct <= instruction[5:0];
    end



    //     // rst
    //     always @(posedge clk or posedge rst) begin
    //         if (rst) begin
    //             // reset output
    //             data <= 32'b0;
    //         end else begin
    //             // output result
    //             data <= MemtoReg ? data : alu_result;
    //         end
    //     end

endmodule
