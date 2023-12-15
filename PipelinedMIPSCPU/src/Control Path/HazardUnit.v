module HazardUnit (
    input BranchD,
    input [4:0] RsD, RtD,
    input [4:0] RsE, RtE,
    input [4:0] WriteRegE,
    input RegWriteE, MemToRegE,
    input [4:0] WriteRegM,
    input RegWriteM, MemToRegM,
    input [4:0] WriteRegW,
    input RegWriteW,

    output StallD, StallF,
    output ForwardAD, ForwardBD,
    output reg [1:0] ForwardAE, ForwardBE,
    output FlushE
);

    wire lwStall, branchStall;

    // SrcA
    always @(*) begin
        if (((RsE != 0) && (RsE == WriteRegM)) && RegWriteM) begin
            ForwardAE = 2'b10;
        end else if (((RsE != 0) && (RsE == WriteRegW)) && RegWriteW) begin
            ForwardAE = 2'b01;
        end else begin
            ForwardAE = 2'b00;
        end
    end

    // SrcB
    always @(*) begin
        if (((RtE != 0) && (RtE == WriteRegM)) && RegWriteM) begin
            ForwardBE = 2'b10;
        end else if (((RtE != 0) && (RtE == WriteRegW)) && RegWriteW) begin
            ForwardBE = 2'b01;
        end else begin
            ForwardBE = 2'b00;
        end
    end

    // check stall
    assign lwStall = ((RsD == RtE) || (RtD == RtE)) && MemToRegE;


    // check branch forward
    assign ForwardAD = (RsD != 0) && (RsD == WriteRegM) && RegWriteM;
    assign ForwardBD = (RtD != 0) && (RtD == WriteRegM) && RegWriteM;

    // check branch stall
    assign branchStall = (BranchD && RegWriteE && (WriteRegE == RsD || WriteRegE == RtD)) || (BranchD && MemToRegM && (WriteRegM == RsD || WriteRegM == RtD));

    assign StallF = lwStall || branchStall;
    assign FlushE = lwStall || branchStall;
    assign StallD = lwStall || branchStall;


endmodule
