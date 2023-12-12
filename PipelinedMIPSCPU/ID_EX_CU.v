module ID_EX_CU(
    input CLK, CLR,
    input RegWriteD, MemToRegD, MemWriteD, ALUSrcD, RegDstD, BranchD, JumpD,
    input [3:0] ALUControlD,
    output reg RegWriteE, MemToRegE, MemWriteE, ALUSrcE, RegDstE, BranchE,
    output reg [3:0] ALUControlE
);

    always @(posedge CLK)begin
        if (CLR) begin
            RegWriteE <= 0;
            MemToRegE <= 0;
            MemWriteE <= 0;
            ALUSrcE <= 0;
            RegDstE <= 0;
            BranchE <= 0;
            ALUControlE <= 4'b0000;
        end else begin
            RegWriteE <= RegWriteD;
            MemToRegE <= MemToRegD;
            MemWriteE <= MemWriteD;
            ALUSrcE <= ALUSrcD;
            RegDstE <= RegDstD;
            BranchE <= BranchD;
            ALUControlE <= ALUControlD;
        end
    end

endmodule