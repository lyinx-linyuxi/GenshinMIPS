# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new MultiCycleMIPSCPU work:MultiCycleMIPSCPU:NOFILE -nosplit
load symbol RTL_MUX26 work MUX pin S input.bot pinBus I0 input.left [11:0] pinBus I1 input.left [11:0] pinBus O output.right [11:0] fillcolor 1
load symbol CodeDiv work:CodeDiv:NOFILE HIERBOX pin CLK input.left pin RST input.left pinBus funct output.right [5:0] pinBus instruction input.left [31:0] pinBus opcode output.right [5:0] pinBus rd output.right [4:0] pinBus rs output.right [4:0] pinBus rt output.right [4:0] pinBus state input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol IR work:IR:NOFILE HIERBOX pin CLK input.left pin En input.left pinBus MemRD input.left [31:0] pinBus instruction output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_TRISTATE work BUFIF1 pinBus I input [31:0] pinBus O output [31:0] pinBus OE input.bot [31:0] fillcolor 1
load symbol Multi_Controller work:Multi_Controller:NOFILE HIERBOX pin ALUSrcA output.right pin Branch output.right pin IRWrite output.right pin IorD output.right pin MemToReg output.right pin MemWrite output.right pin PCWrite output.right pin RegDst output.right pin RegWrite output.right pin next_ins output.right pinBus ALUControl output.right [3:0] pinBus ALUOp output.right [1:0] pinBus ALUSrcB output.right [1:0] pinBus Funct input.left [5:0] pinBus Op input.left [5:0] pinBus PCSrc output.right [1:0] pinBus state input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_OR0 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX19 work MUX pin S input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX7 work MUX pin S input.bot pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] pinBus O output.right [4:0] fillcolor 1
load symbol ALU work:ALU:NOFILE HIERBOX pin CF output.right pin OF output.right pin PF output.right pin SF output.right pin ZF output.right pinBus A input.left [31:0] pinBus B input.left [31:0] pinBus F output.right [31:0] pinBus OP input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_LSHIFT0 work RTL(<<) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [1:0] pinBus O output.right [31:0] fillcolor 1
load symbol multiplexer41 work:multiplexer41:NOFILE HIERBOX pinBus Sel input.left [1:0] pinBus in_1 input.left [31:0] pinBus in_2 input.left [31:0] pinBus in_3 input.left [31:0] pinBus in_4 input.left [31:0] pinBus out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol multiplexer41 work:abstract:NOFILE HIERBOX pinBus Sel input.left [1:0] pinBus in_1 input.left [31:0] pinBus in_2 input.left [31:0] pinBus in_3 input.left [31:0] pinBus in_4 input.left [31:0] pinBus out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol next_state work:next_state:NOFILE HIERBOX pin CLK input.left pin RST input.left pin next_ins input.left pinBus next_state output.right [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PC work:PC:NOFILE HIERBOX pin CLK input.left pin En input.left pin RST input.left pinBus Input_Addr input.left [31:0] pinBus Ins_Addr output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RAM work:RAM:NOFILE HIERBOX pin CLK input.left pin CS input.left pin R_W input.left pin Rst input.left pinBus Addr input.left [11:0] pinBus Data inout.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol regs_clk work:regs_clk:NOFILE HIERBOX pin CLK input.left pinBus A output.right [31:0] pinBus ALUOut output.right [31:0] pinBus ALUResult input.left [31:0] pinBus B output.right [31:0] pinBus RD1 input.left [31:0] pinBus RD2 input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RegFile work:RegFile:NOFILE HIERBOX pin CLK input.left pin WE3 input.left pin rst input.left pinBus RA1 input.left [4:0] pinBus RA2 input.left [4:0] pinBus RD1 output.right [31:0] pinBus RD2 output.right [31:0] pinBus WA3 input.left [4:0] pinBus WD3 input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG__BREG_2 work[31:0]sww GEN pin C input.clk.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load port CLK input -pg 1 -lvl 0 -x 0 -y 400
load port RST input -pg 1 -lvl 0 -x 0 -y 420
load portBus ALUOut output [31:0] -attr @name ALUOut[31:0] -pg 1 -lvl 14 -x 4750 -y 610
load portBus ALUResult output [31:0] -attr @name ALUResult[31:0] -pg 1 -lvl 14 -x 4750 -y 350
load inst Addr0_i RTL_MUX26 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[11:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[11:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[11:0] -pg 1 -lvl 4 -x 1050 -y 290
load inst CodeDiv_1 CodeDiv work:CodeDiv:NOFILE -autohide -attr @cell(#000000) CodeDiv -pinBusAttr funct @name funct[5:0] -pinBusAttr instruction @name instruction[31:0] -pinBusAttr opcode @name opcode[5:0] -pinBusAttr rd @name rd[4:0] -pinBusAttr rs @name rs[4:0] -pinBusAttr rt @name rt[4:0] -pinBusAttr state @name state[2:0] -pg 1 -lvl 7 -x 2180 -y 290
load inst IR_1 IR work:IR:NOFILE -autohide -attr @cell(#000000) IR -pinBusAttr MemRD @name MemRD[31:0] -pinBusAttr instruction @name instruction[31:0] -pg 1 -lvl 6 -x 1700 -y 740
load inst MemRD0 RTL_TRISTATE work -attr @cell(#000000) RTL_TRISTATE -pinBusAttr I @name I[31:0] -pinBusAttr O @name O[31:0] -pinBusAttr OE @name OE[31:0] -pg 1 -lvl 5 -x 1350 -y 750
load inst Multi_Controller_1 Multi_Controller work:Multi_Controller:NOFILE -autohide -attr @cell(#000000) Multi_Controller -pinBusAttr ALUControl @name ALUControl[3:0] -pinBusAttr ALUOp @name ALUOp[1:0] -pinBusAttr ALUOp @attr n/c -pinBusAttr ALUSrcB @name ALUSrcB[1:0] -pinBusAttr Funct @name Funct[5:0] -pinBusAttr Op @name Op[5:0] -pinBusAttr PCSrc @name PCSrc[1:0] -pinBusAttr state @name state[2:0] -pg 1 -lvl 8 -x 2590 -y 50
load inst PC_En0_i RTL_AND work -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 90 -y 160
load inst PC_En_i RTL_OR0 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 2 -x 370 -y 170
load inst SrcA_i RTL_MUX19 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 11 -x 3990 -y 450
load inst WA30_i RTL_MUX7 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[4:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[4:0] -pg 1 -lvl 9 -x 3220 -y 520
load inst WD30_i RTL_MUX19 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 9 -x 3220 -y 740
load inst alu ALU work:ALU:NOFILE -autohide -attr @cell(#000000) ALU -pinAttr CF @attr n/c -pinAttr OF @attr n/c -pinAttr PF @attr n/c -pinAttr SF @attr n/c -pinBusAttr A @name A[31:0] -pinBusAttr B @name B[31:0] -pinBusAttr F @name F[31:0] -pinBusAttr OP @name OP[3:0] -pg 1 -lvl 12 -x 4270 -y 400
load inst in_40_i RTL_LSHIFT0 work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"10\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 10 -x 3590 -y 830
load inst multiplexer41_1 multiplexer41 work:multiplexer41:NOFILE -autohide -attr @cell(#000000) multiplexer41 -pinBusAttr Sel @name Sel[1:0] -pinBusAttr in_1 @name in_1[31:0] -pinBusAttr in_2 @name in_2[31:0] -pinBusAttr in_2 @attr V=X\"00000004\" -pinBusAttr in_3 @name in_3[31:0] -pinBusAttr in_4 @name in_4[31:0] -pinBusAttr out @name out[31:0] -pg 1 -lvl 11 -x 3990 -y 740
load inst multiplexer41_2 multiplexer41 work:abstract:NOFILE -autohide -attr @cell(#000000) multiplexer41 -pinBusAttr Sel @name Sel[1:0] -pinBusAttr in_1 @name in_1[31:0] -pinBusAttr in_2 @name in_2[31:0] -pinBusAttr in_3 @name in_3[31:0] -pinBusAttr in_4 @name in_4[31:0] -pinBusAttr in_4 @attr n/c -pinBusAttr out @name out[31:0] -pg 1 -lvl 2 -x 370 -y 270
load inst next_state_1 next_state work:next_state:NOFILE -autohide -attr @cell(#000000) next_state -pinBusAttr next_state @name next_state[2:0] -pg 1 -lvl 6 -x 1700 -y 520
load inst pc1 PC work:PC:NOFILE -autohide -attr @cell(#000000) PC -pinBusAttr Input_Addr @name Input_Addr[31:0] -pinBusAttr Ins_Addr @name Ins_Addr[31:0] -pg 1 -lvl 3 -x 680 -y 270
load inst ram RAM work:RAM:NOFILE -autohide -attr @cell(#000000) RAM -pinBusAttr Addr @name Addr[11:0] -pinBusAttr Data @name Data[31:0] -pg 1 -lvl 5 -x 1350 -y 590
load inst regs_clk_1 regs_clk work:regs_clk:NOFILE -autohide -attr @cell(#000000) regs_clk -pinBusAttr A @name A[31:0] -pinBusAttr ALUOut @name ALUOut[31:0] -pinBusAttr ALUResult @name ALUResult[31:0] -pinBusAttr B @name B[31:0] -pinBusAttr RD1 @name RD1[31:0] -pinBusAttr RD2 @name RD2[31:0] -pg 1 -lvl 13 -x 4540 -y 580
load inst rf RegFile work:RegFile:NOFILE -autohide -attr @cell(#000000) RegFile -pinBusAttr RA1 @name RA1[4:0] -pinBusAttr RA2 @name RA2[4:0] -pinBusAttr RD1 @name RD1[31:0] -pinBusAttr RD2 @name RD2[31:0] -pinBusAttr WA3 @name WA3[4:0] -pinBusAttr WD3 @name WD3[31:0] -pg 1 -lvl 10 -x 3590 -y 530
load inst Data_reg[31:0] RTL_REG__BREG_2 work[31:0]sww -attr @cell(#000000) RTL_REG -pg 1 -lvl 8 -x 2590 -y 750
load net <const0> -ground -pin in_40_i I1[0] -pin multiplexer41_1 in_2[31] -pin multiplexer41_1 in_2[30] -pin multiplexer41_1 in_2[29] -pin multiplexer41_1 in_2[28] -pin multiplexer41_1 in_2[27] -pin multiplexer41_1 in_2[26] -pin multiplexer41_1 in_2[25] -pin multiplexer41_1 in_2[24] -pin multiplexer41_1 in_2[23] -pin multiplexer41_1 in_2[22] -pin multiplexer41_1 in_2[21] -pin multiplexer41_1 in_2[20] -pin multiplexer41_1 in_2[19] -pin multiplexer41_1 in_2[18] -pin multiplexer41_1 in_2[17] -pin multiplexer41_1 in_2[16] -pin multiplexer41_1 in_2[15] -pin multiplexer41_1 in_2[14] -pin multiplexer41_1 in_2[13] -pin multiplexer41_1 in_2[12] -pin multiplexer41_1 in_2[11] -pin multiplexer41_1 in_2[10] -pin multiplexer41_1 in_2[9] -pin multiplexer41_1 in_2[8] -pin multiplexer41_1 in_2[7] -pin multiplexer41_1 in_2[6] -pin multiplexer41_1 in_2[5] -pin multiplexer41_1 in_2[4] -pin multiplexer41_1 in_2[3] -pin multiplexer41_1 in_2[1] -pin multiplexer41_1 in_2[0] -pin multiplexer41_2 in_3[1] -pin multiplexer41_2 in_3[0]
load net <const1> -power -pin in_40_i I2 -pin in_40_i I1[1] -pin multiplexer41_1 in_2[2] -pin ram CS
load net ALUControl[0] -attr @rip(#000000) ALUControl[0] -pin Multi_Controller_1 ALUControl[0] -pin alu OP[0]
load net ALUControl[1] -attr @rip(#000000) ALUControl[1] -pin Multi_Controller_1 ALUControl[1] -pin alu OP[1]
load net ALUControl[2] -attr @rip(#000000) ALUControl[2] -pin Multi_Controller_1 ALUControl[2] -pin alu OP[2]
load net ALUControl[3] -attr @rip(#000000) ALUControl[3] -pin Multi_Controller_1 ALUControl[3] -pin alu OP[3]
load net ALUOut[0] -attr @rip(#000000) ALUOut[0] -port ALUOut[0] -pin WD30_i I1[0] -pin multiplexer41_2 in_2[0] -pin regs_clk_1 ALUOut[0]
load net ALUOut[10] -attr @rip(#000000) ALUOut[10] -port ALUOut[10] -pin WD30_i I1[10] -pin multiplexer41_2 in_2[10] -pin regs_clk_1 ALUOut[10]
load net ALUOut[11] -attr @rip(#000000) ALUOut[11] -port ALUOut[11] -pin WD30_i I1[11] -pin multiplexer41_2 in_2[11] -pin regs_clk_1 ALUOut[11]
load net ALUOut[12] -attr @rip(#000000) ALUOut[12] -port ALUOut[12] -pin WD30_i I1[12] -pin multiplexer41_2 in_2[12] -pin regs_clk_1 ALUOut[12]
load net ALUOut[13] -attr @rip(#000000) ALUOut[13] -port ALUOut[13] -pin WD30_i I1[13] -pin multiplexer41_2 in_2[13] -pin regs_clk_1 ALUOut[13]
load net ALUOut[14] -attr @rip(#000000) ALUOut[14] -port ALUOut[14] -pin WD30_i I1[14] -pin multiplexer41_2 in_2[14] -pin regs_clk_1 ALUOut[14]
load net ALUOut[15] -attr @rip(#000000) ALUOut[15] -port ALUOut[15] -pin WD30_i I1[15] -pin multiplexer41_2 in_2[15] -pin regs_clk_1 ALUOut[15]
load net ALUOut[16] -attr @rip(#000000) ALUOut[16] -port ALUOut[16] -pin WD30_i I1[16] -pin multiplexer41_2 in_2[16] -pin regs_clk_1 ALUOut[16]
load net ALUOut[17] -attr @rip(#000000) ALUOut[17] -port ALUOut[17] -pin WD30_i I1[17] -pin multiplexer41_2 in_2[17] -pin regs_clk_1 ALUOut[17]
load net ALUOut[18] -attr @rip(#000000) ALUOut[18] -port ALUOut[18] -pin WD30_i I1[18] -pin multiplexer41_2 in_2[18] -pin regs_clk_1 ALUOut[18]
load net ALUOut[19] -attr @rip(#000000) ALUOut[19] -port ALUOut[19] -pin WD30_i I1[19] -pin multiplexer41_2 in_2[19] -pin regs_clk_1 ALUOut[19]
load net ALUOut[1] -attr @rip(#000000) ALUOut[1] -port ALUOut[1] -pin WD30_i I1[1] -pin multiplexer41_2 in_2[1] -pin regs_clk_1 ALUOut[1]
load net ALUOut[20] -attr @rip(#000000) ALUOut[20] -port ALUOut[20] -pin WD30_i I1[20] -pin multiplexer41_2 in_2[20] -pin regs_clk_1 ALUOut[20]
load net ALUOut[21] -attr @rip(#000000) ALUOut[21] -port ALUOut[21] -pin WD30_i I1[21] -pin multiplexer41_2 in_2[21] -pin regs_clk_1 ALUOut[21]
load net ALUOut[22] -attr @rip(#000000) ALUOut[22] -port ALUOut[22] -pin WD30_i I1[22] -pin multiplexer41_2 in_2[22] -pin regs_clk_1 ALUOut[22]
load net ALUOut[23] -attr @rip(#000000) ALUOut[23] -port ALUOut[23] -pin WD30_i I1[23] -pin multiplexer41_2 in_2[23] -pin regs_clk_1 ALUOut[23]
load net ALUOut[24] -attr @rip(#000000) ALUOut[24] -port ALUOut[24] -pin WD30_i I1[24] -pin multiplexer41_2 in_2[24] -pin regs_clk_1 ALUOut[24]
load net ALUOut[25] -attr @rip(#000000) ALUOut[25] -port ALUOut[25] -pin WD30_i I1[25] -pin multiplexer41_2 in_2[25] -pin regs_clk_1 ALUOut[25]
load net ALUOut[26] -attr @rip(#000000) ALUOut[26] -port ALUOut[26] -pin WD30_i I1[26] -pin multiplexer41_2 in_2[26] -pin regs_clk_1 ALUOut[26]
load net ALUOut[27] -attr @rip(#000000) ALUOut[27] -port ALUOut[27] -pin WD30_i I1[27] -pin multiplexer41_2 in_2[27] -pin regs_clk_1 ALUOut[27]
load net ALUOut[28] -attr @rip(#000000) ALUOut[28] -port ALUOut[28] -pin WD30_i I1[28] -pin multiplexer41_2 in_2[28] -pin regs_clk_1 ALUOut[28]
load net ALUOut[29] -attr @rip(#000000) ALUOut[29] -port ALUOut[29] -pin WD30_i I1[29] -pin multiplexer41_2 in_2[29] -pin regs_clk_1 ALUOut[29]
load net ALUOut[2] -attr @rip(#000000) ALUOut[2] -port ALUOut[2] -pin WD30_i I1[2] -pin multiplexer41_2 in_2[2] -pin regs_clk_1 ALUOut[2]
load net ALUOut[30] -attr @rip(#000000) ALUOut[30] -port ALUOut[30] -pin WD30_i I1[30] -pin multiplexer41_2 in_2[30] -pin regs_clk_1 ALUOut[30]
load net ALUOut[31] -attr @rip(#000000) ALUOut[31] -port ALUOut[31] -pin WD30_i I1[31] -pin multiplexer41_2 in_2[31] -pin regs_clk_1 ALUOut[31]
load net ALUOut[3] -attr @rip(#000000) ALUOut[3] -port ALUOut[3] -pin WD30_i I1[3] -pin multiplexer41_2 in_2[3] -pin regs_clk_1 ALUOut[3]
load net ALUOut[4] -attr @rip(#000000) ALUOut[4] -port ALUOut[4] -pin WD30_i I1[4] -pin multiplexer41_2 in_2[4] -pin regs_clk_1 ALUOut[4]
load net ALUOut[5] -attr @rip(#000000) ALUOut[5] -port ALUOut[5] -pin WD30_i I1[5] -pin multiplexer41_2 in_2[5] -pin regs_clk_1 ALUOut[5]
load net ALUOut[6] -attr @rip(#000000) ALUOut[6] -port ALUOut[6] -pin WD30_i I1[6] -pin multiplexer41_2 in_2[6] -pin regs_clk_1 ALUOut[6]
load net ALUOut[7] -attr @rip(#000000) ALUOut[7] -port ALUOut[7] -pin WD30_i I1[7] -pin multiplexer41_2 in_2[7] -pin regs_clk_1 ALUOut[7]
load net ALUOut[8] -attr @rip(#000000) ALUOut[8] -port ALUOut[8] -pin WD30_i I1[8] -pin multiplexer41_2 in_2[8] -pin regs_clk_1 ALUOut[8]
load net ALUOut[9] -attr @rip(#000000) ALUOut[9] -port ALUOut[9] -pin WD30_i I1[9] -pin multiplexer41_2 in_2[9] -pin regs_clk_1 ALUOut[9]
load net ALUResult[0] -attr @rip(#000000) F[0] -port ALUResult[0] -pin Addr0_i I0[0] -pin alu F[0] -pin multiplexer41_2 in_1[0] -pin regs_clk_1 ALUResult[0]
load net ALUResult[10] -attr @rip(#000000) F[10] -port ALUResult[10] -pin Addr0_i I0[10] -pin alu F[10] -pin multiplexer41_2 in_1[10] -pin regs_clk_1 ALUResult[10]
load net ALUResult[11] -attr @rip(#000000) F[11] -port ALUResult[11] -pin Addr0_i I0[11] -pin alu F[11] -pin multiplexer41_2 in_1[11] -pin regs_clk_1 ALUResult[11]
load net ALUResult[12] -attr @rip(#000000) F[12] -port ALUResult[12] -pin alu F[12] -pin multiplexer41_2 in_1[12] -pin regs_clk_1 ALUResult[12]
load net ALUResult[13] -attr @rip(#000000) F[13] -port ALUResult[13] -pin alu F[13] -pin multiplexer41_2 in_1[13] -pin regs_clk_1 ALUResult[13]
load net ALUResult[14] -attr @rip(#000000) F[14] -port ALUResult[14] -pin alu F[14] -pin multiplexer41_2 in_1[14] -pin regs_clk_1 ALUResult[14]
load net ALUResult[15] -attr @rip(#000000) F[15] -port ALUResult[15] -pin alu F[15] -pin multiplexer41_2 in_1[15] -pin regs_clk_1 ALUResult[15]
load net ALUResult[16] -attr @rip(#000000) F[16] -port ALUResult[16] -pin alu F[16] -pin multiplexer41_2 in_1[16] -pin regs_clk_1 ALUResult[16]
load net ALUResult[17] -attr @rip(#000000) F[17] -port ALUResult[17] -pin alu F[17] -pin multiplexer41_2 in_1[17] -pin regs_clk_1 ALUResult[17]
load net ALUResult[18] -attr @rip(#000000) F[18] -port ALUResult[18] -pin alu F[18] -pin multiplexer41_2 in_1[18] -pin regs_clk_1 ALUResult[18]
load net ALUResult[19] -attr @rip(#000000) F[19] -port ALUResult[19] -pin alu F[19] -pin multiplexer41_2 in_1[19] -pin regs_clk_1 ALUResult[19]
load net ALUResult[1] -attr @rip(#000000) F[1] -port ALUResult[1] -pin Addr0_i I0[1] -pin alu F[1] -pin multiplexer41_2 in_1[1] -pin regs_clk_1 ALUResult[1]
load net ALUResult[20] -attr @rip(#000000) F[20] -port ALUResult[20] -pin alu F[20] -pin multiplexer41_2 in_1[20] -pin regs_clk_1 ALUResult[20]
load net ALUResult[21] -attr @rip(#000000) F[21] -port ALUResult[21] -pin alu F[21] -pin multiplexer41_2 in_1[21] -pin regs_clk_1 ALUResult[21]
load net ALUResult[22] -attr @rip(#000000) F[22] -port ALUResult[22] -pin alu F[22] -pin multiplexer41_2 in_1[22] -pin regs_clk_1 ALUResult[22]
load net ALUResult[23] -attr @rip(#000000) F[23] -port ALUResult[23] -pin alu F[23] -pin multiplexer41_2 in_1[23] -pin regs_clk_1 ALUResult[23]
load net ALUResult[24] -attr @rip(#000000) F[24] -port ALUResult[24] -pin alu F[24] -pin multiplexer41_2 in_1[24] -pin regs_clk_1 ALUResult[24]
load net ALUResult[25] -attr @rip(#000000) F[25] -port ALUResult[25] -pin alu F[25] -pin multiplexer41_2 in_1[25] -pin regs_clk_1 ALUResult[25]
load net ALUResult[26] -attr @rip(#000000) F[26] -port ALUResult[26] -pin alu F[26] -pin multiplexer41_2 in_1[26] -pin regs_clk_1 ALUResult[26]
load net ALUResult[27] -attr @rip(#000000) F[27] -port ALUResult[27] -pin alu F[27] -pin multiplexer41_2 in_1[27] -pin regs_clk_1 ALUResult[27]
load net ALUResult[28] -attr @rip(#000000) F[28] -port ALUResult[28] -pin alu F[28] -pin multiplexer41_2 in_1[28] -pin regs_clk_1 ALUResult[28]
load net ALUResult[29] -attr @rip(#000000) F[29] -port ALUResult[29] -pin alu F[29] -pin multiplexer41_2 in_1[29] -pin regs_clk_1 ALUResult[29]
load net ALUResult[2] -attr @rip(#000000) F[2] -port ALUResult[2] -pin Addr0_i I0[2] -pin alu F[2] -pin multiplexer41_2 in_1[2] -pin regs_clk_1 ALUResult[2]
load net ALUResult[30] -attr @rip(#000000) F[30] -port ALUResult[30] -pin alu F[30] -pin multiplexer41_2 in_1[30] -pin regs_clk_1 ALUResult[30]
load net ALUResult[31] -attr @rip(#000000) F[31] -port ALUResult[31] -pin alu F[31] -pin multiplexer41_2 in_1[31] -pin regs_clk_1 ALUResult[31]
load net ALUResult[3] -attr @rip(#000000) F[3] -port ALUResult[3] -pin Addr0_i I0[3] -pin alu F[3] -pin multiplexer41_2 in_1[3] -pin regs_clk_1 ALUResult[3]
load net ALUResult[4] -attr @rip(#000000) F[4] -port ALUResult[4] -pin Addr0_i I0[4] -pin alu F[4] -pin multiplexer41_2 in_1[4] -pin regs_clk_1 ALUResult[4]
load net ALUResult[5] -attr @rip(#000000) F[5] -port ALUResult[5] -pin Addr0_i I0[5] -pin alu F[5] -pin multiplexer41_2 in_1[5] -pin regs_clk_1 ALUResult[5]
load net ALUResult[6] -attr @rip(#000000) F[6] -port ALUResult[6] -pin Addr0_i I0[6] -pin alu F[6] -pin multiplexer41_2 in_1[6] -pin regs_clk_1 ALUResult[6]
load net ALUResult[7] -attr @rip(#000000) F[7] -port ALUResult[7] -pin Addr0_i I0[7] -pin alu F[7] -pin multiplexer41_2 in_1[7] -pin regs_clk_1 ALUResult[7]
load net ALUResult[8] -attr @rip(#000000) F[8] -port ALUResult[8] -pin Addr0_i I0[8] -pin alu F[8] -pin multiplexer41_2 in_1[8] -pin regs_clk_1 ALUResult[8]
load net ALUResult[9] -attr @rip(#000000) F[9] -port ALUResult[9] -pin Addr0_i I0[9] -pin alu F[9] -pin multiplexer41_2 in_1[9] -pin regs_clk_1 ALUResult[9]
load net ALUSrcA -pin Multi_Controller_1 ALUSrcA -pin SrcA_i S
netloc ALUSrcA 1 8 3 3070 420 NJ 420 3780J
load net ALUSrcB[0] -attr @rip(#000000) ALUSrcB[0] -pin Multi_Controller_1 ALUSrcB[0] -pin multiplexer41_1 Sel[0]
load net ALUSrcB[1] -attr @rip(#000000) ALUSrcB[1] -pin Multi_Controller_1 ALUSrcB[1] -pin multiplexer41_1 Sel[1]
load net A[0] -attr @rip(#000000) A[0] -pin SrcA_i I0[0] -pin regs_clk_1 A[0]
load net A[10] -attr @rip(#000000) A[10] -pin SrcA_i I0[10] -pin regs_clk_1 A[10]
load net A[11] -attr @rip(#000000) A[11] -pin SrcA_i I0[11] -pin regs_clk_1 A[11]
load net A[12] -attr @rip(#000000) A[12] -pin SrcA_i I0[12] -pin regs_clk_1 A[12]
load net A[13] -attr @rip(#000000) A[13] -pin SrcA_i I0[13] -pin regs_clk_1 A[13]
load net A[14] -attr @rip(#000000) A[14] -pin SrcA_i I0[14] -pin regs_clk_1 A[14]
load net A[15] -attr @rip(#000000) A[15] -pin SrcA_i I0[15] -pin regs_clk_1 A[15]
load net A[16] -attr @rip(#000000) A[16] -pin SrcA_i I0[16] -pin regs_clk_1 A[16]
load net A[17] -attr @rip(#000000) A[17] -pin SrcA_i I0[17] -pin regs_clk_1 A[17]
load net A[18] -attr @rip(#000000) A[18] -pin SrcA_i I0[18] -pin regs_clk_1 A[18]
load net A[19] -attr @rip(#000000) A[19] -pin SrcA_i I0[19] -pin regs_clk_1 A[19]
load net A[1] -attr @rip(#000000) A[1] -pin SrcA_i I0[1] -pin regs_clk_1 A[1]
load net A[20] -attr @rip(#000000) A[20] -pin SrcA_i I0[20] -pin regs_clk_1 A[20]
load net A[21] -attr @rip(#000000) A[21] -pin SrcA_i I0[21] -pin regs_clk_1 A[21]
load net A[22] -attr @rip(#000000) A[22] -pin SrcA_i I0[22] -pin regs_clk_1 A[22]
load net A[23] -attr @rip(#000000) A[23] -pin SrcA_i I0[23] -pin regs_clk_1 A[23]
load net A[24] -attr @rip(#000000) A[24] -pin SrcA_i I0[24] -pin regs_clk_1 A[24]
load net A[25] -attr @rip(#000000) A[25] -pin SrcA_i I0[25] -pin regs_clk_1 A[25]
load net A[26] -attr @rip(#000000) A[26] -pin SrcA_i I0[26] -pin regs_clk_1 A[26]
load net A[27] -attr @rip(#000000) A[27] -pin SrcA_i I0[27] -pin regs_clk_1 A[27]
load net A[28] -attr @rip(#000000) A[28] -pin SrcA_i I0[28] -pin regs_clk_1 A[28]
load net A[29] -attr @rip(#000000) A[29] -pin SrcA_i I0[29] -pin regs_clk_1 A[29]
load net A[2] -attr @rip(#000000) A[2] -pin SrcA_i I0[2] -pin regs_clk_1 A[2]
load net A[30] -attr @rip(#000000) A[30] -pin SrcA_i I0[30] -pin regs_clk_1 A[30]
load net A[31] -attr @rip(#000000) A[31] -pin SrcA_i I0[31] -pin regs_clk_1 A[31]
load net A[3] -attr @rip(#000000) A[3] -pin SrcA_i I0[3] -pin regs_clk_1 A[3]
load net A[4] -attr @rip(#000000) A[4] -pin SrcA_i I0[4] -pin regs_clk_1 A[4]
load net A[5] -attr @rip(#000000) A[5] -pin SrcA_i I0[5] -pin regs_clk_1 A[5]
load net A[6] -attr @rip(#000000) A[6] -pin SrcA_i I0[6] -pin regs_clk_1 A[6]
load net A[7] -attr @rip(#000000) A[7] -pin SrcA_i I0[7] -pin regs_clk_1 A[7]
load net A[8] -attr @rip(#000000) A[8] -pin SrcA_i I0[8] -pin regs_clk_1 A[8]
load net A[9] -attr @rip(#000000) A[9] -pin SrcA_i I0[9] -pin regs_clk_1 A[9]
load net Addr0[0] -attr @rip(#000000) O[0] -pin Addr0_i O[0] -pin ram Addr[0]
load net Addr0[10] -attr @rip(#000000) O[10] -pin Addr0_i O[10] -pin ram Addr[10]
load net Addr0[11] -attr @rip(#000000) O[11] -pin Addr0_i O[11] -pin ram Addr[11]
load net Addr0[1] -attr @rip(#000000) O[1] -pin Addr0_i O[1] -pin ram Addr[1]
load net Addr0[2] -attr @rip(#000000) O[2] -pin Addr0_i O[2] -pin ram Addr[2]
load net Addr0[3] -attr @rip(#000000) O[3] -pin Addr0_i O[3] -pin ram Addr[3]
load net Addr0[4] -attr @rip(#000000) O[4] -pin Addr0_i O[4] -pin ram Addr[4]
load net Addr0[5] -attr @rip(#000000) O[5] -pin Addr0_i O[5] -pin ram Addr[5]
load net Addr0[6] -attr @rip(#000000) O[6] -pin Addr0_i O[6] -pin ram Addr[6]
load net Addr0[7] -attr @rip(#000000) O[7] -pin Addr0_i O[7] -pin ram Addr[7]
load net Addr0[8] -attr @rip(#000000) O[8] -pin Addr0_i O[8] -pin ram Addr[8]
load net Addr0[9] -attr @rip(#000000) O[9] -pin Addr0_i O[9] -pin ram Addr[9]
load net B[0] -attr @rip(#000000) B[0] -pin MemRD0 I[0] -pin regs_clk_1 B[0]
load net B[10] -attr @rip(#000000) B[10] -pin MemRD0 I[10] -pin regs_clk_1 B[10]
load net B[11] -attr @rip(#000000) B[11] -pin MemRD0 I[11] -pin regs_clk_1 B[11]
load net B[12] -attr @rip(#000000) B[12] -pin MemRD0 I[12] -pin regs_clk_1 B[12]
load net B[13] -attr @rip(#000000) B[13] -pin MemRD0 I[13] -pin regs_clk_1 B[13]
load net B[14] -attr @rip(#000000) B[14] -pin MemRD0 I[14] -pin regs_clk_1 B[14]
load net B[15] -attr @rip(#000000) B[15] -pin MemRD0 I[15] -pin regs_clk_1 B[15]
load net B[16] -attr @rip(#000000) B[16] -pin MemRD0 I[16] -pin regs_clk_1 B[16]
load net B[17] -attr @rip(#000000) B[17] -pin MemRD0 I[17] -pin regs_clk_1 B[17]
load net B[18] -attr @rip(#000000) B[18] -pin MemRD0 I[18] -pin regs_clk_1 B[18]
load net B[19] -attr @rip(#000000) B[19] -pin MemRD0 I[19] -pin regs_clk_1 B[19]
load net B[1] -attr @rip(#000000) B[1] -pin MemRD0 I[1] -pin regs_clk_1 B[1]
load net B[20] -attr @rip(#000000) B[20] -pin MemRD0 I[20] -pin regs_clk_1 B[20]
load net B[21] -attr @rip(#000000) B[21] -pin MemRD0 I[21] -pin regs_clk_1 B[21]
load net B[22] -attr @rip(#000000) B[22] -pin MemRD0 I[22] -pin regs_clk_1 B[22]
load net B[23] -attr @rip(#000000) B[23] -pin MemRD0 I[23] -pin regs_clk_1 B[23]
load net B[24] -attr @rip(#000000) B[24] -pin MemRD0 I[24] -pin regs_clk_1 B[24]
load net B[25] -attr @rip(#000000) B[25] -pin MemRD0 I[25] -pin regs_clk_1 B[25]
load net B[26] -attr @rip(#000000) B[26] -pin MemRD0 I[26] -pin regs_clk_1 B[26]
load net B[27] -attr @rip(#000000) B[27] -pin MemRD0 I[27] -pin regs_clk_1 B[27]
load net B[28] -attr @rip(#000000) B[28] -pin MemRD0 I[28] -pin regs_clk_1 B[28]
load net B[29] -attr @rip(#000000) B[29] -pin MemRD0 I[29] -pin regs_clk_1 B[29]
load net B[2] -attr @rip(#000000) B[2] -pin MemRD0 I[2] -pin regs_clk_1 B[2]
load net B[30] -attr @rip(#000000) B[30] -pin MemRD0 I[30] -pin regs_clk_1 B[30]
load net B[31] -attr @rip(#000000) B[31] -pin MemRD0 I[31] -pin regs_clk_1 B[31]
load net B[3] -attr @rip(#000000) B[3] -pin MemRD0 I[3] -pin regs_clk_1 B[3]
load net B[4] -attr @rip(#000000) B[4] -pin MemRD0 I[4] -pin regs_clk_1 B[4]
load net B[5] -attr @rip(#000000) B[5] -pin MemRD0 I[5] -pin regs_clk_1 B[5]
load net B[6] -attr @rip(#000000) B[6] -pin MemRD0 I[6] -pin regs_clk_1 B[6]
load net B[7] -attr @rip(#000000) B[7] -pin MemRD0 I[7] -pin regs_clk_1 B[7]
load net B[8] -attr @rip(#000000) B[8] -pin MemRD0 I[8] -pin regs_clk_1 B[8]
load net B[9] -attr @rip(#000000) B[9] -pin MemRD0 I[9] -pin regs_clk_1 B[9]
load net Branch -pin Multi_Controller_1 Branch -pin PC_En0_i I1
netloc Branch 1 0 9 20 100 NJ 100 NJ 100 NJ 100 NJ 100 NJ 100 NJ 100 2500J 340 2830
load net CLK -port CLK -pin CodeDiv_1 CLK -pin Data_reg[31:0] C -pin IR_1 CLK -pin next_state_1 CLK -pin pc1 CLK -pin ram CLK -pin regs_clk_1 CLK -pin rf CLK
netloc CLK 1 0 13 NJ 400 NJ 400 530 540 NJ 540 1200 480 1570 610 1900 710 2460 600 NJ 600 3390 720 3800J 610 NJ 610 NJ
load net Data[0] -attr @rip(#000000) 0 -pin Data_reg[31:0] Q[0] -pin WD30_i I0[0]
load net Data[10] -attr @rip(#000000) 10 -pin Data_reg[31:0] Q[10] -pin WD30_i I0[10]
load net Data[11] -attr @rip(#000000) 11 -pin Data_reg[31:0] Q[11] -pin WD30_i I0[11]
load net Data[12] -attr @rip(#000000) 12 -pin Data_reg[31:0] Q[12] -pin WD30_i I0[12]
load net Data[13] -attr @rip(#000000) 13 -pin Data_reg[31:0] Q[13] -pin WD30_i I0[13]
load net Data[14] -attr @rip(#000000) 14 -pin Data_reg[31:0] Q[14] -pin WD30_i I0[14]
load net Data[15] -attr @rip(#000000) 15 -pin Data_reg[31:0] Q[15] -pin WD30_i I0[15]
load net Data[16] -attr @rip(#000000) 16 -pin Data_reg[31:0] Q[16] -pin WD30_i I0[16]
load net Data[17] -attr @rip(#000000) 17 -pin Data_reg[31:0] Q[17] -pin WD30_i I0[17]
load net Data[18] -attr @rip(#000000) 18 -pin Data_reg[31:0] Q[18] -pin WD30_i I0[18]
load net Data[19] -attr @rip(#000000) 19 -pin Data_reg[31:0] Q[19] -pin WD30_i I0[19]
load net Data[1] -attr @rip(#000000) 1 -pin Data_reg[31:0] Q[1] -pin WD30_i I0[1]
load net Data[20] -attr @rip(#000000) 20 -pin Data_reg[31:0] Q[20] -pin WD30_i I0[20]
load net Data[21] -attr @rip(#000000) 21 -pin Data_reg[31:0] Q[21] -pin WD30_i I0[21]
load net Data[22] -attr @rip(#000000) 22 -pin Data_reg[31:0] Q[22] -pin WD30_i I0[22]
load net Data[23] -attr @rip(#000000) 23 -pin Data_reg[31:0] Q[23] -pin WD30_i I0[23]
load net Data[24] -attr @rip(#000000) 24 -pin Data_reg[31:0] Q[24] -pin WD30_i I0[24]
load net Data[25] -attr @rip(#000000) 25 -pin Data_reg[31:0] Q[25] -pin WD30_i I0[25]
load net Data[26] -attr @rip(#000000) 26 -pin Data_reg[31:0] Q[26] -pin WD30_i I0[26]
load net Data[27] -attr @rip(#000000) 27 -pin Data_reg[31:0] Q[27] -pin WD30_i I0[27]
load net Data[28] -attr @rip(#000000) 28 -pin Data_reg[31:0] Q[28] -pin WD30_i I0[28]
load net Data[29] -attr @rip(#000000) 29 -pin Data_reg[31:0] Q[29] -pin WD30_i I0[29]
load net Data[2] -attr @rip(#000000) 2 -pin Data_reg[31:0] Q[2] -pin WD30_i I0[2]
load net Data[30] -attr @rip(#000000) 30 -pin Data_reg[31:0] Q[30] -pin WD30_i I0[30]
load net Data[31] -attr @rip(#000000) 31 -pin Data_reg[31:0] Q[31] -pin WD30_i I0[31]
load net Data[3] -attr @rip(#000000) 3 -pin Data_reg[31:0] Q[3] -pin WD30_i I0[3]
load net Data[4] -attr @rip(#000000) 4 -pin Data_reg[31:0] Q[4] -pin WD30_i I0[4]
load net Data[5] -attr @rip(#000000) 5 -pin Data_reg[31:0] Q[5] -pin WD30_i I0[5]
load net Data[6] -attr @rip(#000000) 6 -pin Data_reg[31:0] Q[6] -pin WD30_i I0[6]
load net Data[7] -attr @rip(#000000) 7 -pin Data_reg[31:0] Q[7] -pin WD30_i I0[7]
load net Data[8] -attr @rip(#000000) 8 -pin Data_reg[31:0] Q[8] -pin WD30_i I0[8]
load net Data[9] -attr @rip(#000000) 9 -pin Data_reg[31:0] Q[9] -pin WD30_i I0[9]
load net IRWrite -pin IR_1 En -pin Multi_Controller_1 IRWrite
netloc IRWrite 1 5 4 1590 690 NJ 690 NJ 690 2890
load net IorD -pin Addr0_i S -pin Multi_Controller_1 IorD
netloc IorD 1 4 5 NJ 350 NJ 350 1880J 240 2440J 400 2850
load net MemRD[0] -attr @rip(#000000) O[0] -pin Data_reg[31:0] D[0] -pin IR_1 MemRD[0] -pin MemRD0 O[0] -pin ram Data[0]
load net MemRD[10] -attr @rip(#000000) O[10] -pin Data_reg[31:0] D[10] -pin IR_1 MemRD[10] -pin MemRD0 O[10] -pin ram Data[10]
load net MemRD[11] -attr @rip(#000000) O[11] -pin Data_reg[31:0] D[11] -pin IR_1 MemRD[11] -pin MemRD0 O[11] -pin ram Data[11]
load net MemRD[12] -attr @rip(#000000) O[12] -pin Data_reg[31:0] D[12] -pin IR_1 MemRD[12] -pin MemRD0 O[12] -pin ram Data[12]
load net MemRD[13] -attr @rip(#000000) O[13] -pin Data_reg[31:0] D[13] -pin IR_1 MemRD[13] -pin MemRD0 O[13] -pin ram Data[13]
load net MemRD[14] -attr @rip(#000000) O[14] -pin Data_reg[31:0] D[14] -pin IR_1 MemRD[14] -pin MemRD0 O[14] -pin ram Data[14]
load net MemRD[15] -attr @rip(#000000) O[15] -pin Data_reg[31:0] D[15] -pin IR_1 MemRD[15] -pin MemRD0 O[15] -pin ram Data[15]
load net MemRD[16] -attr @rip(#000000) O[16] -pin Data_reg[31:0] D[16] -pin IR_1 MemRD[16] -pin MemRD0 O[16] -pin ram Data[16]
load net MemRD[17] -attr @rip(#000000) O[17] -pin Data_reg[31:0] D[17] -pin IR_1 MemRD[17] -pin MemRD0 O[17] -pin ram Data[17]
load net MemRD[18] -attr @rip(#000000) O[18] -pin Data_reg[31:0] D[18] -pin IR_1 MemRD[18] -pin MemRD0 O[18] -pin ram Data[18]
load net MemRD[19] -attr @rip(#000000) O[19] -pin Data_reg[31:0] D[19] -pin IR_1 MemRD[19] -pin MemRD0 O[19] -pin ram Data[19]
load net MemRD[1] -attr @rip(#000000) O[1] -pin Data_reg[31:0] D[1] -pin IR_1 MemRD[1] -pin MemRD0 O[1] -pin ram Data[1]
load net MemRD[20] -attr @rip(#000000) O[20] -pin Data_reg[31:0] D[20] -pin IR_1 MemRD[20] -pin MemRD0 O[20] -pin ram Data[20]
load net MemRD[21] -attr @rip(#000000) O[21] -pin Data_reg[31:0] D[21] -pin IR_1 MemRD[21] -pin MemRD0 O[21] -pin ram Data[21]
load net MemRD[22] -attr @rip(#000000) O[22] -pin Data_reg[31:0] D[22] -pin IR_1 MemRD[22] -pin MemRD0 O[22] -pin ram Data[22]
load net MemRD[23] -attr @rip(#000000) O[23] -pin Data_reg[31:0] D[23] -pin IR_1 MemRD[23] -pin MemRD0 O[23] -pin ram Data[23]
load net MemRD[24] -attr @rip(#000000) O[24] -pin Data_reg[31:0] D[24] -pin IR_1 MemRD[24] -pin MemRD0 O[24] -pin ram Data[24]
load net MemRD[25] -attr @rip(#000000) O[25] -pin Data_reg[31:0] D[25] -pin IR_1 MemRD[25] -pin MemRD0 O[25] -pin ram Data[25]
load net MemRD[26] -attr @rip(#000000) O[26] -pin Data_reg[31:0] D[26] -pin IR_1 MemRD[26] -pin MemRD0 O[26] -pin ram Data[26]
load net MemRD[27] -attr @rip(#000000) O[27] -pin Data_reg[31:0] D[27] -pin IR_1 MemRD[27] -pin MemRD0 O[27] -pin ram Data[27]
load net MemRD[28] -attr @rip(#000000) O[28] -pin Data_reg[31:0] D[28] -pin IR_1 MemRD[28] -pin MemRD0 O[28] -pin ram Data[28]
load net MemRD[29] -attr @rip(#000000) O[29] -pin Data_reg[31:0] D[29] -pin IR_1 MemRD[29] -pin MemRD0 O[29] -pin ram Data[29]
load net MemRD[2] -attr @rip(#000000) O[2] -pin Data_reg[31:0] D[2] -pin IR_1 MemRD[2] -pin MemRD0 O[2] -pin ram Data[2]
load net MemRD[30] -attr @rip(#000000) O[30] -pin Data_reg[31:0] D[30] -pin IR_1 MemRD[30] -pin MemRD0 O[30] -pin ram Data[30]
load net MemRD[31] -attr @rip(#000000) O[31] -pin Data_reg[31:0] D[31] -pin IR_1 MemRD[31] -pin MemRD0 O[31] -pin ram Data[31]
load net MemRD[3] -attr @rip(#000000) O[3] -pin Data_reg[31:0] D[3] -pin IR_1 MemRD[3] -pin MemRD0 O[3] -pin ram Data[3]
load net MemRD[4] -attr @rip(#000000) O[4] -pin Data_reg[31:0] D[4] -pin IR_1 MemRD[4] -pin MemRD0 O[4] -pin ram Data[4]
load net MemRD[5] -attr @rip(#000000) O[5] -pin Data_reg[31:0] D[5] -pin IR_1 MemRD[5] -pin MemRD0 O[5] -pin ram Data[5]
load net MemRD[6] -attr @rip(#000000) O[6] -pin Data_reg[31:0] D[6] -pin IR_1 MemRD[6] -pin MemRD0 O[6] -pin ram Data[6]
load net MemRD[7] -attr @rip(#000000) O[7] -pin Data_reg[31:0] D[7] -pin IR_1 MemRD[7] -pin MemRD0 O[7] -pin ram Data[7]
load net MemRD[8] -attr @rip(#000000) O[8] -pin Data_reg[31:0] D[8] -pin IR_1 MemRD[8] -pin MemRD0 O[8] -pin ram Data[8]
load net MemRD[9] -attr @rip(#000000) O[9] -pin Data_reg[31:0] D[9] -pin IR_1 MemRD[9] -pin MemRD0 O[9] -pin ram Data[9]
load net MemToReg -pin Multi_Controller_1 MemToReg -pin WD30_i S
netloc MemToReg 1 8 1 2950 180n
load net MemWrite -pin MemRD0 OE[31] -pin MemRD0 OE[30] -pin MemRD0 OE[29] -pin MemRD0 OE[28] -pin MemRD0 OE[27] -pin MemRD0 OE[26] -pin MemRD0 OE[25] -pin MemRD0 OE[24] -pin MemRD0 OE[23] -pin MemRD0 OE[22] -pin MemRD0 OE[21] -pin MemRD0 OE[20] -pin MemRD0 OE[19] -pin MemRD0 OE[18] -pin MemRD0 OE[17] -pin MemRD0 OE[16] -pin MemRD0 OE[15] -pin MemRD0 OE[14] -pin MemRD0 OE[13] -pin MemRD0 OE[12] -pin MemRD0 OE[11] -pin MemRD0 OE[10] -pin MemRD0 OE[9] -pin MemRD0 OE[8] -pin MemRD0 OE[7] -pin MemRD0 OE[6] -pin MemRD0 OE[5] -pin MemRD0 OE[4] -pin MemRD0 OE[3] -pin MemRD0 OE[2] -pin MemRD0 OE[1] -pin MemRD0 OE[0] -pin Multi_Controller_1 MemWrite -pin ram R_W
netloc MemWrite 1 4 5 1240 790N 1510J 670 NJ 670 NJ 670 2870
load net PCSrc[0] -attr @rip(#000000) PCSrc[0] -pin Multi_Controller_1 PCSrc[0] -pin multiplexer41_2 Sel[0]
load net PCSrc[1] -attr @rip(#000000) PCSrc[1] -pin Multi_Controller_1 PCSrc[1] -pin multiplexer41_2 Sel[1]
load net PCWrite -pin Multi_Controller_1 PCWrite -pin PC_En_i I1
netloc PCWrite 1 1 8 200 120 NJ 120 NJ 120 NJ 120 NJ 120 NJ 120 2480J 360 2770
load net PC_En -pin PC_En_i O -pin pc1 En
netloc PC_En 1 2 1 550 170n
load net PC_En0 -pin PC_En0_i O -pin PC_En_i I0
netloc PC_En0 1 1 1 N 160
load net PC_in[0] -attr @rip(#000000) out[0] -pin multiplexer41_2 out[0] -pin pc1 Input_Addr[0]
load net PC_in[10] -attr @rip(#000000) out[10] -pin multiplexer41_2 out[10] -pin pc1 Input_Addr[10]
load net PC_in[11] -attr @rip(#000000) out[11] -pin multiplexer41_2 out[11] -pin pc1 Input_Addr[11]
load net PC_in[12] -attr @rip(#000000) out[12] -pin multiplexer41_2 out[12] -pin pc1 Input_Addr[12]
load net PC_in[13] -attr @rip(#000000) out[13] -pin multiplexer41_2 out[13] -pin pc1 Input_Addr[13]
load net PC_in[14] -attr @rip(#000000) out[14] -pin multiplexer41_2 out[14] -pin pc1 Input_Addr[14]
load net PC_in[15] -attr @rip(#000000) out[15] -pin multiplexer41_2 out[15] -pin pc1 Input_Addr[15]
load net PC_in[16] -attr @rip(#000000) out[16] -pin multiplexer41_2 out[16] -pin pc1 Input_Addr[16]
load net PC_in[17] -attr @rip(#000000) out[17] -pin multiplexer41_2 out[17] -pin pc1 Input_Addr[17]
load net PC_in[18] -attr @rip(#000000) out[18] -pin multiplexer41_2 out[18] -pin pc1 Input_Addr[18]
load net PC_in[19] -attr @rip(#000000) out[19] -pin multiplexer41_2 out[19] -pin pc1 Input_Addr[19]
load net PC_in[1] -attr @rip(#000000) out[1] -pin multiplexer41_2 out[1] -pin pc1 Input_Addr[1]
load net PC_in[20] -attr @rip(#000000) out[20] -pin multiplexer41_2 out[20] -pin pc1 Input_Addr[20]
load net PC_in[21] -attr @rip(#000000) out[21] -pin multiplexer41_2 out[21] -pin pc1 Input_Addr[21]
load net PC_in[22] -attr @rip(#000000) out[22] -pin multiplexer41_2 out[22] -pin pc1 Input_Addr[22]
load net PC_in[23] -attr @rip(#000000) out[23] -pin multiplexer41_2 out[23] -pin pc1 Input_Addr[23]
load net PC_in[24] -attr @rip(#000000) out[24] -pin multiplexer41_2 out[24] -pin pc1 Input_Addr[24]
load net PC_in[25] -attr @rip(#000000) out[25] -pin multiplexer41_2 out[25] -pin pc1 Input_Addr[25]
load net PC_in[26] -attr @rip(#000000) out[26] -pin multiplexer41_2 out[26] -pin pc1 Input_Addr[26]
load net PC_in[27] -attr @rip(#000000) out[27] -pin multiplexer41_2 out[27] -pin pc1 Input_Addr[27]
load net PC_in[28] -attr @rip(#000000) out[28] -pin multiplexer41_2 out[28] -pin pc1 Input_Addr[28]
load net PC_in[29] -attr @rip(#000000) out[29] -pin multiplexer41_2 out[29] -pin pc1 Input_Addr[29]
load net PC_in[2] -attr @rip(#000000) out[2] -pin multiplexer41_2 out[2] -pin pc1 Input_Addr[2]
load net PC_in[30] -attr @rip(#000000) out[30] -pin multiplexer41_2 out[30] -pin pc1 Input_Addr[30]
load net PC_in[31] -attr @rip(#000000) out[31] -pin multiplexer41_2 out[31] -pin pc1 Input_Addr[31]
load net PC_in[3] -attr @rip(#000000) out[3] -pin multiplexer41_2 out[3] -pin pc1 Input_Addr[3]
load net PC_in[4] -attr @rip(#000000) out[4] -pin multiplexer41_2 out[4] -pin pc1 Input_Addr[4]
load net PC_in[5] -attr @rip(#000000) out[5] -pin multiplexer41_2 out[5] -pin pc1 Input_Addr[5]
load net PC_in[6] -attr @rip(#000000) out[6] -pin multiplexer41_2 out[6] -pin pc1 Input_Addr[6]
load net PC_in[7] -attr @rip(#000000) out[7] -pin multiplexer41_2 out[7] -pin pc1 Input_Addr[7]
load net PC_in[8] -attr @rip(#000000) out[8] -pin multiplexer41_2 out[8] -pin pc1 Input_Addr[8]
load net PC_in[9] -attr @rip(#000000) out[9] -pin multiplexer41_2 out[9] -pin pc1 Input_Addr[9]
load net PC_out[0] -attr @rip(#000000) Ins_Addr[0] -pin SrcA_i I1[0] -pin pc1 Ins_Addr[0]
load net PC_out[10] -attr @rip(#000000) Ins_Addr[10] -pin Addr0_i I1[8] -pin SrcA_i I1[10] -pin pc1 Ins_Addr[10]
load net PC_out[11] -attr @rip(#000000) Ins_Addr[11] -pin Addr0_i I1[9] -pin SrcA_i I1[11] -pin pc1 Ins_Addr[11]
load net PC_out[12] -attr @rip(#000000) Ins_Addr[12] -pin Addr0_i I1[10] -pin SrcA_i I1[12] -pin pc1 Ins_Addr[12]
load net PC_out[13] -attr @rip(#000000) Ins_Addr[13] -pin Addr0_i I1[11] -pin SrcA_i I1[13] -pin pc1 Ins_Addr[13]
load net PC_out[14] -attr @rip(#000000) Ins_Addr[14] -pin SrcA_i I1[14] -pin pc1 Ins_Addr[14]
load net PC_out[15] -attr @rip(#000000) Ins_Addr[15] -pin SrcA_i I1[15] -pin pc1 Ins_Addr[15]
load net PC_out[16] -attr @rip(#000000) Ins_Addr[16] -pin SrcA_i I1[16] -pin pc1 Ins_Addr[16]
load net PC_out[17] -attr @rip(#000000) Ins_Addr[17] -pin SrcA_i I1[17] -pin pc1 Ins_Addr[17]
load net PC_out[18] -attr @rip(#000000) Ins_Addr[18] -pin SrcA_i I1[18] -pin pc1 Ins_Addr[18]
load net PC_out[19] -attr @rip(#000000) Ins_Addr[19] -pin SrcA_i I1[19] -pin pc1 Ins_Addr[19]
load net PC_out[1] -attr @rip(#000000) Ins_Addr[1] -pin SrcA_i I1[1] -pin pc1 Ins_Addr[1]
load net PC_out[20] -attr @rip(#000000) Ins_Addr[20] -pin SrcA_i I1[20] -pin pc1 Ins_Addr[20]
load net PC_out[21] -attr @rip(#000000) Ins_Addr[21] -pin SrcA_i I1[21] -pin pc1 Ins_Addr[21]
load net PC_out[22] -attr @rip(#000000) Ins_Addr[22] -pin SrcA_i I1[22] -pin pc1 Ins_Addr[22]
load net PC_out[23] -attr @rip(#000000) Ins_Addr[23] -pin SrcA_i I1[23] -pin pc1 Ins_Addr[23]
load net PC_out[24] -attr @rip(#000000) Ins_Addr[24] -pin SrcA_i I1[24] -pin pc1 Ins_Addr[24]
load net PC_out[25] -attr @rip(#000000) Ins_Addr[25] -pin SrcA_i I1[25] -pin pc1 Ins_Addr[25]
load net PC_out[26] -attr @rip(#000000) Ins_Addr[26] -pin SrcA_i I1[26] -pin pc1 Ins_Addr[26]
load net PC_out[27] -attr @rip(#000000) Ins_Addr[27] -pin SrcA_i I1[27] -pin pc1 Ins_Addr[27]
load net PC_out[28] -attr @rip(#000000) Ins_Addr[28] -pin SrcA_i I1[28] -pin multiplexer41_2 in_3[28] -pin pc1 Ins_Addr[28]
load net PC_out[29] -attr @rip(#000000) Ins_Addr[29] -pin SrcA_i I1[29] -pin multiplexer41_2 in_3[29] -pin pc1 Ins_Addr[29]
load net PC_out[2] -attr @rip(#000000) Ins_Addr[2] -pin Addr0_i I1[0] -pin SrcA_i I1[2] -pin pc1 Ins_Addr[2]
load net PC_out[30] -attr @rip(#000000) Ins_Addr[30] -pin SrcA_i I1[30] -pin multiplexer41_2 in_3[30] -pin pc1 Ins_Addr[30]
load net PC_out[31] -attr @rip(#000000) Ins_Addr[31] -pin SrcA_i I1[31] -pin multiplexer41_2 in_3[31] -pin pc1 Ins_Addr[31]
load net PC_out[3] -attr @rip(#000000) Ins_Addr[3] -pin Addr0_i I1[1] -pin SrcA_i I1[3] -pin pc1 Ins_Addr[3]
load net PC_out[4] -attr @rip(#000000) Ins_Addr[4] -pin Addr0_i I1[2] -pin SrcA_i I1[4] -pin pc1 Ins_Addr[4]
load net PC_out[5] -attr @rip(#000000) Ins_Addr[5] -pin Addr0_i I1[3] -pin SrcA_i I1[5] -pin pc1 Ins_Addr[5]
load net PC_out[6] -attr @rip(#000000) Ins_Addr[6] -pin Addr0_i I1[4] -pin SrcA_i I1[6] -pin pc1 Ins_Addr[6]
load net PC_out[7] -attr @rip(#000000) Ins_Addr[7] -pin Addr0_i I1[5] -pin SrcA_i I1[7] -pin pc1 Ins_Addr[7]
load net PC_out[8] -attr @rip(#000000) Ins_Addr[8] -pin Addr0_i I1[6] -pin SrcA_i I1[8] -pin pc1 Ins_Addr[8]
load net PC_out[9] -attr @rip(#000000) Ins_Addr[9] -pin Addr0_i I1[7] -pin SrcA_i I1[9] -pin pc1 Ins_Addr[9]
load net RD1[0] -attr @rip(#000000) RD1[0] -pin regs_clk_1 RD1[0] -pin rf RD1[0]
load net RD1[10] -attr @rip(#000000) RD1[10] -pin regs_clk_1 RD1[10] -pin rf RD1[10]
load net RD1[11] -attr @rip(#000000) RD1[11] -pin regs_clk_1 RD1[11] -pin rf RD1[11]
load net RD1[12] -attr @rip(#000000) RD1[12] -pin regs_clk_1 RD1[12] -pin rf RD1[12]
load net RD1[13] -attr @rip(#000000) RD1[13] -pin regs_clk_1 RD1[13] -pin rf RD1[13]
load net RD1[14] -attr @rip(#000000) RD1[14] -pin regs_clk_1 RD1[14] -pin rf RD1[14]
load net RD1[15] -attr @rip(#000000) RD1[15] -pin regs_clk_1 RD1[15] -pin rf RD1[15]
load net RD1[16] -attr @rip(#000000) RD1[16] -pin regs_clk_1 RD1[16] -pin rf RD1[16]
load net RD1[17] -attr @rip(#000000) RD1[17] -pin regs_clk_1 RD1[17] -pin rf RD1[17]
load net RD1[18] -attr @rip(#000000) RD1[18] -pin regs_clk_1 RD1[18] -pin rf RD1[18]
load net RD1[19] -attr @rip(#000000) RD1[19] -pin regs_clk_1 RD1[19] -pin rf RD1[19]
load net RD1[1] -attr @rip(#000000) RD1[1] -pin regs_clk_1 RD1[1] -pin rf RD1[1]
load net RD1[20] -attr @rip(#000000) RD1[20] -pin regs_clk_1 RD1[20] -pin rf RD1[20]
load net RD1[21] -attr @rip(#000000) RD1[21] -pin regs_clk_1 RD1[21] -pin rf RD1[21]
load net RD1[22] -attr @rip(#000000) RD1[22] -pin regs_clk_1 RD1[22] -pin rf RD1[22]
load net RD1[23] -attr @rip(#000000) RD1[23] -pin regs_clk_1 RD1[23] -pin rf RD1[23]
load net RD1[24] -attr @rip(#000000) RD1[24] -pin regs_clk_1 RD1[24] -pin rf RD1[24]
load net RD1[25] -attr @rip(#000000) RD1[25] -pin regs_clk_1 RD1[25] -pin rf RD1[25]
load net RD1[26] -attr @rip(#000000) RD1[26] -pin regs_clk_1 RD1[26] -pin rf RD1[26]
load net RD1[27] -attr @rip(#000000) RD1[27] -pin regs_clk_1 RD1[27] -pin rf RD1[27]
load net RD1[28] -attr @rip(#000000) RD1[28] -pin regs_clk_1 RD1[28] -pin rf RD1[28]
load net RD1[29] -attr @rip(#000000) RD1[29] -pin regs_clk_1 RD1[29] -pin rf RD1[29]
load net RD1[2] -attr @rip(#000000) RD1[2] -pin regs_clk_1 RD1[2] -pin rf RD1[2]
load net RD1[30] -attr @rip(#000000) RD1[30] -pin regs_clk_1 RD1[30] -pin rf RD1[30]
load net RD1[31] -attr @rip(#000000) RD1[31] -pin regs_clk_1 RD1[31] -pin rf RD1[31]
load net RD1[3] -attr @rip(#000000) RD1[3] -pin regs_clk_1 RD1[3] -pin rf RD1[3]
load net RD1[4] -attr @rip(#000000) RD1[4] -pin regs_clk_1 RD1[4] -pin rf RD1[4]
load net RD1[5] -attr @rip(#000000) RD1[5] -pin regs_clk_1 RD1[5] -pin rf RD1[5]
load net RD1[6] -attr @rip(#000000) RD1[6] -pin regs_clk_1 RD1[6] -pin rf RD1[6]
load net RD1[7] -attr @rip(#000000) RD1[7] -pin regs_clk_1 RD1[7] -pin rf RD1[7]
load net RD1[8] -attr @rip(#000000) RD1[8] -pin regs_clk_1 RD1[8] -pin rf RD1[8]
load net RD1[9] -attr @rip(#000000) RD1[9] -pin regs_clk_1 RD1[9] -pin rf RD1[9]
load net RD2[0] -attr @rip(#000000) RD2[0] -pin multiplexer41_1 in_1[0] -pin regs_clk_1 RD2[0] -pin rf RD2[0]
load net RD2[10] -attr @rip(#000000) RD2[10] -pin multiplexer41_1 in_1[10] -pin regs_clk_1 RD2[10] -pin rf RD2[10]
load net RD2[11] -attr @rip(#000000) RD2[11] -pin multiplexer41_1 in_1[11] -pin regs_clk_1 RD2[11] -pin rf RD2[11]
load net RD2[12] -attr @rip(#000000) RD2[12] -pin multiplexer41_1 in_1[12] -pin regs_clk_1 RD2[12] -pin rf RD2[12]
load net RD2[13] -attr @rip(#000000) RD2[13] -pin multiplexer41_1 in_1[13] -pin regs_clk_1 RD2[13] -pin rf RD2[13]
load net RD2[14] -attr @rip(#000000) RD2[14] -pin multiplexer41_1 in_1[14] -pin regs_clk_1 RD2[14] -pin rf RD2[14]
load net RD2[15] -attr @rip(#000000) RD2[15] -pin multiplexer41_1 in_1[15] -pin regs_clk_1 RD2[15] -pin rf RD2[15]
load net RD2[16] -attr @rip(#000000) RD2[16] -pin multiplexer41_1 in_1[16] -pin regs_clk_1 RD2[16] -pin rf RD2[16]
load net RD2[17] -attr @rip(#000000) RD2[17] -pin multiplexer41_1 in_1[17] -pin regs_clk_1 RD2[17] -pin rf RD2[17]
load net RD2[18] -attr @rip(#000000) RD2[18] -pin multiplexer41_1 in_1[18] -pin regs_clk_1 RD2[18] -pin rf RD2[18]
load net RD2[19] -attr @rip(#000000) RD2[19] -pin multiplexer41_1 in_1[19] -pin regs_clk_1 RD2[19] -pin rf RD2[19]
load net RD2[1] -attr @rip(#000000) RD2[1] -pin multiplexer41_1 in_1[1] -pin regs_clk_1 RD2[1] -pin rf RD2[1]
load net RD2[20] -attr @rip(#000000) RD2[20] -pin multiplexer41_1 in_1[20] -pin regs_clk_1 RD2[20] -pin rf RD2[20]
load net RD2[21] -attr @rip(#000000) RD2[21] -pin multiplexer41_1 in_1[21] -pin regs_clk_1 RD2[21] -pin rf RD2[21]
load net RD2[22] -attr @rip(#000000) RD2[22] -pin multiplexer41_1 in_1[22] -pin regs_clk_1 RD2[22] -pin rf RD2[22]
load net RD2[23] -attr @rip(#000000) RD2[23] -pin multiplexer41_1 in_1[23] -pin regs_clk_1 RD2[23] -pin rf RD2[23]
load net RD2[24] -attr @rip(#000000) RD2[24] -pin multiplexer41_1 in_1[24] -pin regs_clk_1 RD2[24] -pin rf RD2[24]
load net RD2[25] -attr @rip(#000000) RD2[25] -pin multiplexer41_1 in_1[25] -pin regs_clk_1 RD2[25] -pin rf RD2[25]
load net RD2[26] -attr @rip(#000000) RD2[26] -pin multiplexer41_1 in_1[26] -pin regs_clk_1 RD2[26] -pin rf RD2[26]
load net RD2[27] -attr @rip(#000000) RD2[27] -pin multiplexer41_1 in_1[27] -pin regs_clk_1 RD2[27] -pin rf RD2[27]
load net RD2[28] -attr @rip(#000000) RD2[28] -pin multiplexer41_1 in_1[28] -pin regs_clk_1 RD2[28] -pin rf RD2[28]
load net RD2[29] -attr @rip(#000000) RD2[29] -pin multiplexer41_1 in_1[29] -pin regs_clk_1 RD2[29] -pin rf RD2[29]
load net RD2[2] -attr @rip(#000000) RD2[2] -pin multiplexer41_1 in_1[2] -pin regs_clk_1 RD2[2] -pin rf RD2[2]
load net RD2[30] -attr @rip(#000000) RD2[30] -pin multiplexer41_1 in_1[30] -pin regs_clk_1 RD2[30] -pin rf RD2[30]
load net RD2[31] -attr @rip(#000000) RD2[31] -pin multiplexer41_1 in_1[31] -pin regs_clk_1 RD2[31] -pin rf RD2[31]
load net RD2[3] -attr @rip(#000000) RD2[3] -pin multiplexer41_1 in_1[3] -pin regs_clk_1 RD2[3] -pin rf RD2[3]
load net RD2[4] -attr @rip(#000000) RD2[4] -pin multiplexer41_1 in_1[4] -pin regs_clk_1 RD2[4] -pin rf RD2[4]
load net RD2[5] -attr @rip(#000000) RD2[5] -pin multiplexer41_1 in_1[5] -pin regs_clk_1 RD2[5] -pin rf RD2[5]
load net RD2[6] -attr @rip(#000000) RD2[6] -pin multiplexer41_1 in_1[6] -pin regs_clk_1 RD2[6] -pin rf RD2[6]
load net RD2[7] -attr @rip(#000000) RD2[7] -pin multiplexer41_1 in_1[7] -pin regs_clk_1 RD2[7] -pin rf RD2[7]
load net RD2[8] -attr @rip(#000000) RD2[8] -pin multiplexer41_1 in_1[8] -pin regs_clk_1 RD2[8] -pin rf RD2[8]
load net RD2[9] -attr @rip(#000000) RD2[9] -pin multiplexer41_1 in_1[9] -pin regs_clk_1 RD2[9] -pin rf RD2[9]
load net RST -pin CodeDiv_1 RST -port RST -pin next_state_1 RST -pin pc1 RST -pin ram Rst -pin rf rst
netloc RST 1 0 10 NJ 420 NJ 420 550 560 NJ 560 1220 500 1590 470 1960 650 NJ 650 2930J 660 NJ
load net RegDst -pin Multi_Controller_1 RegDst -pin WA30_i S
netloc RegDst 1 8 1 3050 260n
load net RegWrite -pin Multi_Controller_1 RegWrite -pin rf WE3
netloc RegWrite 1 8 2 3030 440 3430J
load net SrcA[0] -attr @rip(#000000) O[0] -pin SrcA_i O[0] -pin alu A[0]
load net SrcA[10] -attr @rip(#000000) O[10] -pin SrcA_i O[10] -pin alu A[10]
load net SrcA[11] -attr @rip(#000000) O[11] -pin SrcA_i O[11] -pin alu A[11]
load net SrcA[12] -attr @rip(#000000) O[12] -pin SrcA_i O[12] -pin alu A[12]
load net SrcA[13] -attr @rip(#000000) O[13] -pin SrcA_i O[13] -pin alu A[13]
load net SrcA[14] -attr @rip(#000000) O[14] -pin SrcA_i O[14] -pin alu A[14]
load net SrcA[15] -attr @rip(#000000) O[15] -pin SrcA_i O[15] -pin alu A[15]
load net SrcA[16] -attr @rip(#000000) O[16] -pin SrcA_i O[16] -pin alu A[16]
load net SrcA[17] -attr @rip(#000000) O[17] -pin SrcA_i O[17] -pin alu A[17]
load net SrcA[18] -attr @rip(#000000) O[18] -pin SrcA_i O[18] -pin alu A[18]
load net SrcA[19] -attr @rip(#000000) O[19] -pin SrcA_i O[19] -pin alu A[19]
load net SrcA[1] -attr @rip(#000000) O[1] -pin SrcA_i O[1] -pin alu A[1]
load net SrcA[20] -attr @rip(#000000) O[20] -pin SrcA_i O[20] -pin alu A[20]
load net SrcA[21] -attr @rip(#000000) O[21] -pin SrcA_i O[21] -pin alu A[21]
load net SrcA[22] -attr @rip(#000000) O[22] -pin SrcA_i O[22] -pin alu A[22]
load net SrcA[23] -attr @rip(#000000) O[23] -pin SrcA_i O[23] -pin alu A[23]
load net SrcA[24] -attr @rip(#000000) O[24] -pin SrcA_i O[24] -pin alu A[24]
load net SrcA[25] -attr @rip(#000000) O[25] -pin SrcA_i O[25] -pin alu A[25]
load net SrcA[26] -attr @rip(#000000) O[26] -pin SrcA_i O[26] -pin alu A[26]
load net SrcA[27] -attr @rip(#000000) O[27] -pin SrcA_i O[27] -pin alu A[27]
load net SrcA[28] -attr @rip(#000000) O[28] -pin SrcA_i O[28] -pin alu A[28]
load net SrcA[29] -attr @rip(#000000) O[29] -pin SrcA_i O[29] -pin alu A[29]
load net SrcA[2] -attr @rip(#000000) O[2] -pin SrcA_i O[2] -pin alu A[2]
load net SrcA[30] -attr @rip(#000000) O[30] -pin SrcA_i O[30] -pin alu A[30]
load net SrcA[31] -attr @rip(#000000) O[31] -pin SrcA_i O[31] -pin alu A[31]
load net SrcA[3] -attr @rip(#000000) O[3] -pin SrcA_i O[3] -pin alu A[3]
load net SrcA[4] -attr @rip(#000000) O[4] -pin SrcA_i O[4] -pin alu A[4]
load net SrcA[5] -attr @rip(#000000) O[5] -pin SrcA_i O[5] -pin alu A[5]
load net SrcA[6] -attr @rip(#000000) O[6] -pin SrcA_i O[6] -pin alu A[6]
load net SrcA[7] -attr @rip(#000000) O[7] -pin SrcA_i O[7] -pin alu A[7]
load net SrcA[8] -attr @rip(#000000) O[8] -pin SrcA_i O[8] -pin alu A[8]
load net SrcA[9] -attr @rip(#000000) O[9] -pin SrcA_i O[9] -pin alu A[9]
load net SrcB[0] -attr @rip(#000000) out[0] -pin alu B[0] -pin multiplexer41_1 out[0]
load net SrcB[10] -attr @rip(#000000) out[10] -pin alu B[10] -pin multiplexer41_1 out[10]
load net SrcB[11] -attr @rip(#000000) out[11] -pin alu B[11] -pin multiplexer41_1 out[11]
load net SrcB[12] -attr @rip(#000000) out[12] -pin alu B[12] -pin multiplexer41_1 out[12]
load net SrcB[13] -attr @rip(#000000) out[13] -pin alu B[13] -pin multiplexer41_1 out[13]
load net SrcB[14] -attr @rip(#000000) out[14] -pin alu B[14] -pin multiplexer41_1 out[14]
load net SrcB[15] -attr @rip(#000000) out[15] -pin alu B[15] -pin multiplexer41_1 out[15]
load net SrcB[16] -attr @rip(#000000) out[16] -pin alu B[16] -pin multiplexer41_1 out[16]
load net SrcB[17] -attr @rip(#000000) out[17] -pin alu B[17] -pin multiplexer41_1 out[17]
load net SrcB[18] -attr @rip(#000000) out[18] -pin alu B[18] -pin multiplexer41_1 out[18]
load net SrcB[19] -attr @rip(#000000) out[19] -pin alu B[19] -pin multiplexer41_1 out[19]
load net SrcB[1] -attr @rip(#000000) out[1] -pin alu B[1] -pin multiplexer41_1 out[1]
load net SrcB[20] -attr @rip(#000000) out[20] -pin alu B[20] -pin multiplexer41_1 out[20]
load net SrcB[21] -attr @rip(#000000) out[21] -pin alu B[21] -pin multiplexer41_1 out[21]
load net SrcB[22] -attr @rip(#000000) out[22] -pin alu B[22] -pin multiplexer41_1 out[22]
load net SrcB[23] -attr @rip(#000000) out[23] -pin alu B[23] -pin multiplexer41_1 out[23]
load net SrcB[24] -attr @rip(#000000) out[24] -pin alu B[24] -pin multiplexer41_1 out[24]
load net SrcB[25] -attr @rip(#000000) out[25] -pin alu B[25] -pin multiplexer41_1 out[25]
load net SrcB[26] -attr @rip(#000000) out[26] -pin alu B[26] -pin multiplexer41_1 out[26]
load net SrcB[27] -attr @rip(#000000) out[27] -pin alu B[27] -pin multiplexer41_1 out[27]
load net SrcB[28] -attr @rip(#000000) out[28] -pin alu B[28] -pin multiplexer41_1 out[28]
load net SrcB[29] -attr @rip(#000000) out[29] -pin alu B[29] -pin multiplexer41_1 out[29]
load net SrcB[2] -attr @rip(#000000) out[2] -pin alu B[2] -pin multiplexer41_1 out[2]
load net SrcB[30] -attr @rip(#000000) out[30] -pin alu B[30] -pin multiplexer41_1 out[30]
load net SrcB[31] -attr @rip(#000000) out[31] -pin alu B[31] -pin multiplexer41_1 out[31]
load net SrcB[3] -attr @rip(#000000) out[3] -pin alu B[3] -pin multiplexer41_1 out[3]
load net SrcB[4] -attr @rip(#000000) out[4] -pin alu B[4] -pin multiplexer41_1 out[4]
load net SrcB[5] -attr @rip(#000000) out[5] -pin alu B[5] -pin multiplexer41_1 out[5]
load net SrcB[6] -attr @rip(#000000) out[6] -pin alu B[6] -pin multiplexer41_1 out[6]
load net SrcB[7] -attr @rip(#000000) out[7] -pin alu B[7] -pin multiplexer41_1 out[7]
load net SrcB[8] -attr @rip(#000000) out[8] -pin alu B[8] -pin multiplexer41_1 out[8]
load net SrcB[9] -attr @rip(#000000) out[9] -pin alu B[9] -pin multiplexer41_1 out[9]
load net WA30[0] -attr @rip(#000000) O[0] -pin WA30_i O[0] -pin rf WA3[0]
load net WA30[1] -attr @rip(#000000) O[1] -pin WA30_i O[1] -pin rf WA3[1]
load net WA30[2] -attr @rip(#000000) O[2] -pin WA30_i O[2] -pin rf WA3[2]
load net WA30[3] -attr @rip(#000000) O[3] -pin WA30_i O[3] -pin rf WA3[3]
load net WA30[4] -attr @rip(#000000) O[4] -pin WA30_i O[4] -pin rf WA3[4]
load net WD30[0] -attr @rip(#000000) O[0] -pin WD30_i O[0] -pin rf WD3[0]
load net WD30[10] -attr @rip(#000000) O[10] -pin WD30_i O[10] -pin rf WD3[10]
load net WD30[11] -attr @rip(#000000) O[11] -pin WD30_i O[11] -pin rf WD3[11]
load net WD30[12] -attr @rip(#000000) O[12] -pin WD30_i O[12] -pin rf WD3[12]
load net WD30[13] -attr @rip(#000000) O[13] -pin WD30_i O[13] -pin rf WD3[13]
load net WD30[14] -attr @rip(#000000) O[14] -pin WD30_i O[14] -pin rf WD3[14]
load net WD30[15] -attr @rip(#000000) O[15] -pin WD30_i O[15] -pin rf WD3[15]
load net WD30[16] -attr @rip(#000000) O[16] -pin WD30_i O[16] -pin rf WD3[16]
load net WD30[17] -attr @rip(#000000) O[17] -pin WD30_i O[17] -pin rf WD3[17]
load net WD30[18] -attr @rip(#000000) O[18] -pin WD30_i O[18] -pin rf WD3[18]
load net WD30[19] -attr @rip(#000000) O[19] -pin WD30_i O[19] -pin rf WD3[19]
load net WD30[1] -attr @rip(#000000) O[1] -pin WD30_i O[1] -pin rf WD3[1]
load net WD30[20] -attr @rip(#000000) O[20] -pin WD30_i O[20] -pin rf WD3[20]
load net WD30[21] -attr @rip(#000000) O[21] -pin WD30_i O[21] -pin rf WD3[21]
load net WD30[22] -attr @rip(#000000) O[22] -pin WD30_i O[22] -pin rf WD3[22]
load net WD30[23] -attr @rip(#000000) O[23] -pin WD30_i O[23] -pin rf WD3[23]
load net WD30[24] -attr @rip(#000000) O[24] -pin WD30_i O[24] -pin rf WD3[24]
load net WD30[25] -attr @rip(#000000) O[25] -pin WD30_i O[25] -pin rf WD3[25]
load net WD30[26] -attr @rip(#000000) O[26] -pin WD30_i O[26] -pin rf WD3[26]
load net WD30[27] -attr @rip(#000000) O[27] -pin WD30_i O[27] -pin rf WD3[27]
load net WD30[28] -attr @rip(#000000) O[28] -pin WD30_i O[28] -pin rf WD3[28]
load net WD30[29] -attr @rip(#000000) O[29] -pin WD30_i O[29] -pin rf WD3[29]
load net WD30[2] -attr @rip(#000000) O[2] -pin WD30_i O[2] -pin rf WD3[2]
load net WD30[30] -attr @rip(#000000) O[30] -pin WD30_i O[30] -pin rf WD3[30]
load net WD30[31] -attr @rip(#000000) O[31] -pin WD30_i O[31] -pin rf WD3[31]
load net WD30[3] -attr @rip(#000000) O[3] -pin WD30_i O[3] -pin rf WD3[3]
load net WD30[4] -attr @rip(#000000) O[4] -pin WD30_i O[4] -pin rf WD3[4]
load net WD30[5] -attr @rip(#000000) O[5] -pin WD30_i O[5] -pin rf WD3[5]
load net WD30[6] -attr @rip(#000000) O[6] -pin WD30_i O[6] -pin rf WD3[6]
load net WD30[7] -attr @rip(#000000) O[7] -pin WD30_i O[7] -pin rf WD3[7]
load net WD30[8] -attr @rip(#000000) O[8] -pin WD30_i O[8] -pin rf WD3[8]
load net WD30[9] -attr @rip(#000000) O[9] -pin WD30_i O[9] -pin rf WD3[9]
load net Zero -pin PC_En0_i I0 -pin alu ZF
netloc Zero 1 0 13 40 500 NJ 500 NJ 500 920J 430 NJ 430 NJ 430 2020J 440 NJ 440 3010J 400 NJ 400 3780J 390 4130J 490 4400
load net funct[0] -attr @rip(#000000) funct[0] -pin CodeDiv_1 funct[0] -pin Multi_Controller_1 Funct[0]
load net funct[1] -attr @rip(#000000) funct[1] -pin CodeDiv_1 funct[1] -pin Multi_Controller_1 Funct[1]
load net funct[2] -attr @rip(#000000) funct[2] -pin CodeDiv_1 funct[2] -pin Multi_Controller_1 Funct[2]
load net funct[3] -attr @rip(#000000) funct[3] -pin CodeDiv_1 funct[3] -pin Multi_Controller_1 Funct[3]
load net funct[4] -attr @rip(#000000) funct[4] -pin CodeDiv_1 funct[4] -pin Multi_Controller_1 Funct[4]
load net funct[5] -attr @rip(#000000) funct[5] -pin CodeDiv_1 funct[5] -pin Multi_Controller_1 Funct[5]
load net in_40[0] -attr @rip(#000000) O[0] -pin in_40_i O[0] -pin multiplexer41_1 in_4[0]
load net in_40[10] -attr @rip(#000000) O[10] -pin in_40_i O[10] -pin multiplexer41_1 in_4[10]
load net in_40[11] -attr @rip(#000000) O[11] -pin in_40_i O[11] -pin multiplexer41_1 in_4[11]
load net in_40[12] -attr @rip(#000000) O[12] -pin in_40_i O[12] -pin multiplexer41_1 in_4[12]
load net in_40[13] -attr @rip(#000000) O[13] -pin in_40_i O[13] -pin multiplexer41_1 in_4[13]
load net in_40[14] -attr @rip(#000000) O[14] -pin in_40_i O[14] -pin multiplexer41_1 in_4[14]
load net in_40[15] -attr @rip(#000000) O[15] -pin in_40_i O[15] -pin multiplexer41_1 in_4[15]
load net in_40[16] -attr @rip(#000000) O[16] -pin in_40_i O[16] -pin multiplexer41_1 in_4[16]
load net in_40[17] -attr @rip(#000000) O[17] -pin in_40_i O[17] -pin multiplexer41_1 in_4[17]
load net in_40[18] -attr @rip(#000000) O[18] -pin in_40_i O[18] -pin multiplexer41_1 in_4[18]
load net in_40[19] -attr @rip(#000000) O[19] -pin in_40_i O[19] -pin multiplexer41_1 in_4[19]
load net in_40[1] -attr @rip(#000000) O[1] -pin in_40_i O[1] -pin multiplexer41_1 in_4[1]
load net in_40[20] -attr @rip(#000000) O[20] -pin in_40_i O[20] -pin multiplexer41_1 in_4[20]
load net in_40[21] -attr @rip(#000000) O[21] -pin in_40_i O[21] -pin multiplexer41_1 in_4[21]
load net in_40[22] -attr @rip(#000000) O[22] -pin in_40_i O[22] -pin multiplexer41_1 in_4[22]
load net in_40[23] -attr @rip(#000000) O[23] -pin in_40_i O[23] -pin multiplexer41_1 in_4[23]
load net in_40[24] -attr @rip(#000000) O[24] -pin in_40_i O[24] -pin multiplexer41_1 in_4[24]
load net in_40[25] -attr @rip(#000000) O[25] -pin in_40_i O[25] -pin multiplexer41_1 in_4[25]
load net in_40[26] -attr @rip(#000000) O[26] -pin in_40_i O[26] -pin multiplexer41_1 in_4[26]
load net in_40[27] -attr @rip(#000000) O[27] -pin in_40_i O[27] -pin multiplexer41_1 in_4[27]
load net in_40[28] -attr @rip(#000000) O[28] -pin in_40_i O[28] -pin multiplexer41_1 in_4[28]
load net in_40[29] -attr @rip(#000000) O[29] -pin in_40_i O[29] -pin multiplexer41_1 in_4[29]
load net in_40[2] -attr @rip(#000000) O[2] -pin in_40_i O[2] -pin multiplexer41_1 in_4[2]
load net in_40[30] -attr @rip(#000000) O[30] -pin in_40_i O[30] -pin multiplexer41_1 in_4[30]
load net in_40[31] -attr @rip(#000000) O[31] -pin in_40_i O[31] -pin multiplexer41_1 in_4[31]
load net in_40[3] -attr @rip(#000000) O[3] -pin in_40_i O[3] -pin multiplexer41_1 in_4[3]
load net in_40[4] -attr @rip(#000000) O[4] -pin in_40_i O[4] -pin multiplexer41_1 in_4[4]
load net in_40[5] -attr @rip(#000000) O[5] -pin in_40_i O[5] -pin multiplexer41_1 in_4[5]
load net in_40[6] -attr @rip(#000000) O[6] -pin in_40_i O[6] -pin multiplexer41_1 in_4[6]
load net in_40[7] -attr @rip(#000000) O[7] -pin in_40_i O[7] -pin multiplexer41_1 in_4[7]
load net in_40[8] -attr @rip(#000000) O[8] -pin in_40_i O[8] -pin multiplexer41_1 in_4[8]
load net in_40[9] -attr @rip(#000000) O[9] -pin in_40_i O[9] -pin multiplexer41_1 in_4[9]
load net instruction[0] -attr @rip(#000000) instruction[0] -pin CodeDiv_1 instruction[0] -pin IR_1 instruction[0] -pin in_40_i I0[0] -pin multiplexer41_1 in_3[0] -pin multiplexer41_2 in_3[2]
load net instruction[10] -attr @rip(#000000) instruction[10] -pin CodeDiv_1 instruction[10] -pin IR_1 instruction[10] -pin in_40_i I0[10] -pin multiplexer41_1 in_3[10] -pin multiplexer41_2 in_3[12]
load net instruction[11] -attr @rip(#000000) instruction[11] -pin CodeDiv_1 instruction[11] -pin IR_1 instruction[11] -pin in_40_i I0[11] -pin multiplexer41_1 in_3[11] -pin multiplexer41_2 in_3[13]
load net instruction[12] -attr @rip(#000000) instruction[12] -pin CodeDiv_1 instruction[12] -pin IR_1 instruction[12] -pin in_40_i I0[12] -pin multiplexer41_1 in_3[12] -pin multiplexer41_2 in_3[14]
load net instruction[13] -attr @rip(#000000) instruction[13] -pin CodeDiv_1 instruction[13] -pin IR_1 instruction[13] -pin in_40_i I0[13] -pin multiplexer41_1 in_3[13] -pin multiplexer41_2 in_3[15]
load net instruction[14] -attr @rip(#000000) instruction[14] -pin CodeDiv_1 instruction[14] -pin IR_1 instruction[14] -pin in_40_i I0[14] -pin multiplexer41_1 in_3[14] -pin multiplexer41_2 in_3[16]
load net instruction[15] -attr @rip(#000000) instruction[15] -pin CodeDiv_1 instruction[15] -pin IR_1 instruction[15] -pin in_40_i I0[31] -pin in_40_i I0[30] -pin in_40_i I0[29] -pin in_40_i I0[28] -pin in_40_i I0[27] -pin in_40_i I0[26] -pin in_40_i I0[25] -pin in_40_i I0[24] -pin in_40_i I0[23] -pin in_40_i I0[22] -pin in_40_i I0[21] -pin in_40_i I0[20] -pin in_40_i I0[19] -pin in_40_i I0[18] -pin in_40_i I0[17] -pin in_40_i I0[16] -pin in_40_i I0[15] -pin multiplexer41_1 in_3[31] -pin multiplexer41_1 in_3[30] -pin multiplexer41_1 in_3[29] -pin multiplexer41_1 in_3[28] -pin multiplexer41_1 in_3[27] -pin multiplexer41_1 in_3[26] -pin multiplexer41_1 in_3[25] -pin multiplexer41_1 in_3[24] -pin multiplexer41_1 in_3[23] -pin multiplexer41_1 in_3[22] -pin multiplexer41_1 in_3[21] -pin multiplexer41_1 in_3[20] -pin multiplexer41_1 in_3[19] -pin multiplexer41_1 in_3[18] -pin multiplexer41_1 in_3[17] -pin multiplexer41_1 in_3[16] -pin multiplexer41_1 in_3[15] -pin multiplexer41_2 in_3[17]
load net instruction[16] -attr @rip(#000000) instruction[16] -pin CodeDiv_1 instruction[16] -pin IR_1 instruction[16] -pin multiplexer41_2 in_3[18]
load net instruction[17] -attr @rip(#000000) instruction[17] -pin CodeDiv_1 instruction[17] -pin IR_1 instruction[17] -pin multiplexer41_2 in_3[19]
load net instruction[18] -attr @rip(#000000) instruction[18] -pin CodeDiv_1 instruction[18] -pin IR_1 instruction[18] -pin multiplexer41_2 in_3[20]
load net instruction[19] -attr @rip(#000000) instruction[19] -pin CodeDiv_1 instruction[19] -pin IR_1 instruction[19] -pin multiplexer41_2 in_3[21]
load net instruction[1] -attr @rip(#000000) instruction[1] -pin CodeDiv_1 instruction[1] -pin IR_1 instruction[1] -pin in_40_i I0[1] -pin multiplexer41_1 in_3[1] -pin multiplexer41_2 in_3[3]
load net instruction[20] -attr @rip(#000000) instruction[20] -pin CodeDiv_1 instruction[20] -pin IR_1 instruction[20] -pin multiplexer41_2 in_3[22]
load net instruction[21] -attr @rip(#000000) instruction[21] -pin CodeDiv_1 instruction[21] -pin IR_1 instruction[21] -pin multiplexer41_2 in_3[23]
load net instruction[22] -attr @rip(#000000) instruction[22] -pin CodeDiv_1 instruction[22] -pin IR_1 instruction[22] -pin multiplexer41_2 in_3[24]
load net instruction[23] -attr @rip(#000000) instruction[23] -pin CodeDiv_1 instruction[23] -pin IR_1 instruction[23] -pin multiplexer41_2 in_3[25]
load net instruction[24] -attr @rip(#000000) instruction[24] -pin CodeDiv_1 instruction[24] -pin IR_1 instruction[24] -pin multiplexer41_2 in_3[26]
load net instruction[25] -attr @rip(#000000) instruction[25] -pin CodeDiv_1 instruction[25] -pin IR_1 instruction[25] -pin multiplexer41_2 in_3[27]
load net instruction[26] -attr @rip(#000000) instruction[26] -pin CodeDiv_1 instruction[26] -pin IR_1 instruction[26]
load net instruction[27] -attr @rip(#000000) instruction[27] -pin CodeDiv_1 instruction[27] -pin IR_1 instruction[27]
load net instruction[28] -attr @rip(#000000) instruction[28] -pin CodeDiv_1 instruction[28] -pin IR_1 instruction[28]
load net instruction[29] -attr @rip(#000000) instruction[29] -pin CodeDiv_1 instruction[29] -pin IR_1 instruction[29]
load net instruction[2] -attr @rip(#000000) instruction[2] -pin CodeDiv_1 instruction[2] -pin IR_1 instruction[2] -pin in_40_i I0[2] -pin multiplexer41_1 in_3[2] -pin multiplexer41_2 in_3[4]
load net instruction[30] -attr @rip(#000000) instruction[30] -pin CodeDiv_1 instruction[30] -pin IR_1 instruction[30]
load net instruction[31] -attr @rip(#000000) instruction[31] -pin CodeDiv_1 instruction[31] -pin IR_1 instruction[31]
load net instruction[3] -attr @rip(#000000) instruction[3] -pin CodeDiv_1 instruction[3] -pin IR_1 instruction[3] -pin in_40_i I0[3] -pin multiplexer41_1 in_3[3] -pin multiplexer41_2 in_3[5]
load net instruction[4] -attr @rip(#000000) instruction[4] -pin CodeDiv_1 instruction[4] -pin IR_1 instruction[4] -pin in_40_i I0[4] -pin multiplexer41_1 in_3[4] -pin multiplexer41_2 in_3[6]
load net instruction[5] -attr @rip(#000000) instruction[5] -pin CodeDiv_1 instruction[5] -pin IR_1 instruction[5] -pin in_40_i I0[5] -pin multiplexer41_1 in_3[5] -pin multiplexer41_2 in_3[7]
load net instruction[6] -attr @rip(#000000) instruction[6] -pin CodeDiv_1 instruction[6] -pin IR_1 instruction[6] -pin in_40_i I0[6] -pin multiplexer41_1 in_3[6] -pin multiplexer41_2 in_3[8]
load net instruction[7] -attr @rip(#000000) instruction[7] -pin CodeDiv_1 instruction[7] -pin IR_1 instruction[7] -pin in_40_i I0[7] -pin multiplexer41_1 in_3[7] -pin multiplexer41_2 in_3[9]
load net instruction[8] -attr @rip(#000000) instruction[8] -pin CodeDiv_1 instruction[8] -pin IR_1 instruction[8] -pin in_40_i I0[8] -pin multiplexer41_1 in_3[8] -pin multiplexer41_2 in_3[10]
load net instruction[9] -attr @rip(#000000) instruction[9] -pin CodeDiv_1 instruction[9] -pin IR_1 instruction[9] -pin in_40_i I0[9] -pin multiplexer41_1 in_3[9] -pin multiplexer41_2 in_3[11]
load net next_ins -pin Multi_Controller_1 next_ins -pin next_state_1 next_ins
netloc next_ins 1 5 4 1590 630 1920J 610 2340J 560 2790
load net opcode[0] -attr @rip(#000000) opcode[0] -pin CodeDiv_1 opcode[0] -pin Multi_Controller_1 Op[0]
load net opcode[1] -attr @rip(#000000) opcode[1] -pin CodeDiv_1 opcode[1] -pin Multi_Controller_1 Op[1]
load net opcode[2] -attr @rip(#000000) opcode[2] -pin CodeDiv_1 opcode[2] -pin Multi_Controller_1 Op[2]
load net opcode[3] -attr @rip(#000000) opcode[3] -pin CodeDiv_1 opcode[3] -pin Multi_Controller_1 Op[3]
load net opcode[4] -attr @rip(#000000) opcode[4] -pin CodeDiv_1 opcode[4] -pin Multi_Controller_1 Op[4]
load net opcode[5] -attr @rip(#000000) opcode[5] -pin CodeDiv_1 opcode[5] -pin Multi_Controller_1 Op[5]
load net rd[0] -attr @rip(#000000) rd[0] -pin CodeDiv_1 rd[0] -pin WA30_i I0[0]
load net rd[1] -attr @rip(#000000) rd[1] -pin CodeDiv_1 rd[1] -pin WA30_i I0[1]
load net rd[2] -attr @rip(#000000) rd[2] -pin CodeDiv_1 rd[2] -pin WA30_i I0[2]
load net rd[3] -attr @rip(#000000) rd[3] -pin CodeDiv_1 rd[3] -pin WA30_i I0[3]
load net rd[4] -attr @rip(#000000) rd[4] -pin CodeDiv_1 rd[4] -pin WA30_i I0[4]
load net rs[0] -attr @rip(#000000) rs[0] -pin CodeDiv_1 rs[0] -pin rf RA1[0]
load net rs[1] -attr @rip(#000000) rs[1] -pin CodeDiv_1 rs[1] -pin rf RA1[1]
load net rs[2] -attr @rip(#000000) rs[2] -pin CodeDiv_1 rs[2] -pin rf RA1[2]
load net rs[3] -attr @rip(#000000) rs[3] -pin CodeDiv_1 rs[3] -pin rf RA1[3]
load net rs[4] -attr @rip(#000000) rs[4] -pin CodeDiv_1 rs[4] -pin rf RA1[4]
load net rt[0] -attr @rip(#000000) rt[0] -pin CodeDiv_1 rt[0] -pin WA30_i I1[0] -pin rf RA2[0]
load net rt[1] -attr @rip(#000000) rt[1] -pin CodeDiv_1 rt[1] -pin WA30_i I1[1] -pin rf RA2[1]
load net rt[2] -attr @rip(#000000) rt[2] -pin CodeDiv_1 rt[2] -pin WA30_i I1[2] -pin rf RA2[2]
load net rt[3] -attr @rip(#000000) rt[3] -pin CodeDiv_1 rt[3] -pin WA30_i I1[3] -pin rf RA2[3]
load net rt[4] -attr @rip(#000000) rt[4] -pin CodeDiv_1 rt[4] -pin WA30_i I1[4] -pin rf RA2[4]
load net state[0] -attr @rip(#000000) next_state[0] -pin CodeDiv_1 state[0] -pin Multi_Controller_1 state[0] -pin next_state_1 next_state[0]
load net state[1] -attr @rip(#000000) next_state[1] -pin CodeDiv_1 state[1] -pin Multi_Controller_1 state[1] -pin next_state_1 next_state[1]
load net state[2] -attr @rip(#000000) next_state[2] -pin CodeDiv_1 state[2] -pin Multi_Controller_1 state[2] -pin next_state_1 next_state[2]
load netBundle @ALUOut 32 ALUOut[31] ALUOut[30] ALUOut[29] ALUOut[28] ALUOut[27] ALUOut[26] ALUOut[25] ALUOut[24] ALUOut[23] ALUOut[22] ALUOut[21] ALUOut[20] ALUOut[19] ALUOut[18] ALUOut[17] ALUOut[16] ALUOut[15] ALUOut[14] ALUOut[13] ALUOut[12] ALUOut[11] ALUOut[10] ALUOut[9] ALUOut[8] ALUOut[7] ALUOut[6] ALUOut[5] ALUOut[4] ALUOut[3] ALUOut[2] ALUOut[1] ALUOut[0] -autobundled
netbloc @ALUOut 1 1 13 200 520 NJ 520 NJ 520 NJ 520 1550J 650 1940J 630 2360J 580 2910 900 NJ 900 NJ 900 NJ 900 NJ 900 4730
load netBundle @ALUResult 32 ALUResult[31] ALUResult[30] ALUResult[29] ALUResult[28] ALUResult[27] ALUResult[26] ALUResult[25] ALUResult[24] ALUResult[23] ALUResult[22] ALUResult[21] ALUResult[20] ALUResult[19] ALUResult[18] ALUResult[17] ALUResult[16] ALUResult[15] ALUResult[14] ALUResult[13] ALUResult[12] ALUResult[11] ALUResult[10] ALUResult[9] ALUResult[8] ALUResult[7] ALUResult[6] ALUResult[5] ALUResult[4] ALUResult[3] ALUResult[2] ALUResult[1] ALUResult[0] -autobundled
netbloc @ALUResult 1 1 13 220 440 NJ 440 860 410 NJ 410 NJ 410 2060J 420 NJ 420 2970J 350 NJ 350 NJ 350 NJ 350 4420 350 NJ
load netBundle @Addr0 12 Addr0[11] Addr0[10] Addr0[9] Addr0[8] Addr0[7] Addr0[6] Addr0[5] Addr0[4] Addr0[3] Addr0[2] Addr0[1] Addr0[0] -autobundled
netbloc @Addr0 1 4 1 1180 290n
load netBundle @funct 6 funct[5] funct[4] funct[3] funct[2] funct[1] funct[0] -autobundled
netbloc @funct 1 7 1 2340 160n
load netBundle @opcode 6 opcode[5] opcode[4] opcode[3] opcode[2] opcode[1] opcode[0] -autobundled
netbloc @opcode 1 7 1 2380 180n
load netBundle @rd 5 rd[4] rd[3] rd[2] rd[1] rd[0] -autobundled
netbloc @rd 1 7 2 2420 510 NJ
load netBundle @rs 5 rs[4] rs[3] rs[2] rs[1] rs[0] -autobundled
netbloc @rs 1 7 3 2380 620 NJ 620 3350J
load netBundle @rt 5 rt[4] rt[3] rt[2] rt[1] rt[0] -autobundled
netbloc @rt 1 7 3 2340 530 3090 640 3370J
load netBundle @instruction 32 instruction[31] instruction[30] instruction[29] instruction[28] instruction[27] instruction[26] instruction[25] instruction[24] instruction[23] instruction[22] instruction[21] instruction[20] instruction[19] instruction[18] instruction[17] instruction[16] instruction[15] instruction[14] instruction[13] instruction[12] instruction[11] instruction[10] instruction[9] instruction[8] instruction[7] instruction[6] instruction[5] instruction[4] instruction[3] instruction[2] instruction[1] instruction[0] -autobundled
netbloc @instruction 1 1 10 240 480 NJ 480 900J 390 NJ 390 NJ 390 2040 810 2480J 820 NJ 820 3450 760 3740J
load netBundle @MemRD 32 MemRD[31] MemRD[30] MemRD[29] MemRD[28] MemRD[27] MemRD[26] MemRD[25] MemRD[24] MemRD[23] MemRD[22] MemRD[21] MemRD[20] MemRD[19] MemRD[18] MemRD[17] MemRD[16] MemRD[15] MemRD[14] MemRD[13] MemRD[12] MemRD[11] MemRD[10] MemRD[9] MemRD[8] MemRD[7] MemRD[6] MemRD[5] MemRD[4] MemRD[3] MemRD[2] MemRD[1] MemRD[0] -autobundled
netbloc @MemRD 1 5 3 1530 830 NJ 830 2380
load netBundle @ALUControl 4 ALUControl[3] ALUControl[2] ALUControl[1] ALUControl[0] -autobundled
netbloc @ALUControl 1 8 4 3090 370 NJ 370 NJ 370 4170J
load netBundle @ALUSrcB 2 ALUSrcB[1] ALUSrcB[0] -autobundled
netbloc @ALUSrcB 1 8 3 2990 680 3350J 700 3760J
load netBundle @PCSrc 2 PCSrc[1] PCSrc[0] -autobundled
netbloc @PCSrc 1 1 8 200 220 NJ 220 NJ 220 NJ 220 NJ 220 NJ 220 2460J 380 2810
load netBundle @SrcA 32 SrcA[31] SrcA[30] SrcA[29] SrcA[28] SrcA[27] SrcA[26] SrcA[25] SrcA[24] SrcA[23] SrcA[22] SrcA[21] SrcA[20] SrcA[19] SrcA[18] SrcA[17] SrcA[16] SrcA[15] SrcA[14] SrcA[13] SrcA[12] SrcA[11] SrcA[10] SrcA[9] SrcA[8] SrcA[7] SrcA[6] SrcA[5] SrcA[4] SrcA[3] SrcA[2] SrcA[1] SrcA[0] -autobundled
netbloc @SrcA 1 11 1 4150 410n
load netBundle @WA30 5 WA30[4] WA30[3] WA30[2] WA30[1] WA30[0] -autobundled
netbloc @WA30 1 9 1 3410 520n
load netBundle @WD30 32 WD30[31] WD30[30] WD30[29] WD30[28] WD30[27] WD30[26] WD30[25] WD30[24] WD30[23] WD30[22] WD30[21] WD30[20] WD30[19] WD30[18] WD30[17] WD30[16] WD30[15] WD30[14] WD30[13] WD30[12] WD30[11] WD30[10] WD30[9] WD30[8] WD30[7] WD30[6] WD30[5] WD30[4] WD30[3] WD30[2] WD30[1] WD30[0] -autobundled
netbloc @WD30 1 9 1 3410 620n
load netBundle @in_40 32 in_40[31] in_40[30] in_40[29] in_40[28] in_40[27] in_40[26] in_40[25] in_40[24] in_40[23] in_40[22] in_40[21] in_40[20] in_40[19] in_40[18] in_40[17] in_40[16] in_40[15] in_40[14] in_40[13] in_40[12] in_40[11] in_40[10] in_40[9] in_40[8] in_40[7] in_40[6] in_40[5] in_40[4] in_40[3] in_40[2] in_40[1] in_40[0] -autobundled
netbloc @in_40 1 10 1 NJ 830
load netBundle @SrcB 32 SrcB[31] SrcB[30] SrcB[29] SrcB[28] SrcB[27] SrcB[26] SrcB[25] SrcB[24] SrcB[23] SrcB[22] SrcB[21] SrcB[20] SrcB[19] SrcB[18] SrcB[17] SrcB[16] SrcB[15] SrcB[14] SrcB[13] SrcB[12] SrcB[11] SrcB[10] SrcB[9] SrcB[8] SrcB[7] SrcB[6] SrcB[5] SrcB[4] SrcB[3] SrcB[2] SrcB[1] SrcB[0] -autobundled
netbloc @SrcB 1 11 1 4190 430n
load netBundle @PC_in 32 PC_in[31] PC_in[30] PC_in[29] PC_in[28] PC_in[27] PC_in[26] PC_in[25] PC_in[24] PC_in[23] PC_in[22] PC_in[21] PC_in[20] PC_in[19] PC_in[18] PC_in[17] PC_in[16] PC_in[15] PC_in[14] PC_in[13] PC_in[12] PC_in[11] PC_in[10] PC_in[9] PC_in[8] PC_in[7] PC_in[6] PC_in[5] PC_in[4] PC_in[3] PC_in[2] PC_in[1] PC_in[0] -autobundled
netbloc @PC_in 1 2 1 510 300n
load netBundle @state 3 state[2] state[1] state[0] -autobundled
netbloc @state 1 6 2 2000 480 2400
load netBundle @PC_out 32 PC_out[31] PC_out[30] PC_out[29] PC_out[28] PC_out[27] PC_out[26] PC_out[25] PC_out[24] PC_out[23] PC_out[22] PC_out[21] PC_out[20] PC_out[19] PC_out[18] PC_out[17] PC_out[16] PC_out[15] PC_out[14] PC_out[13] PC_out[12] PC_out[11] PC_out[10] PC_out[9] PC_out[8] PC_out[7] PC_out[6] PC_out[5] PC_out[4] PC_out[3] PC_out[2] PC_out[1] PC_out[0] -autobundled
netbloc @PC_out 1 1 10 260 460 NJ 460 880 450 NJ 450 NJ 450 1980J 460 NJ 460 NJ 460 NJ 460 NJ
load netBundle @A 32 A[31] A[30] A[29] A[28] A[27] A[26] A[25] A[24] A[23] A[22] A[21] A[20] A[19] A[18] A[17] A[16] A[15] A[14] A[13] A[12] A[11] A[10] A[9] A[8] A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] -autobundled
netbloc @A 1 10 4 3820 530 NJ 530 NJ 530 4730
load netBundle @B 32 B[31] B[30] B[29] B[28] B[27] B[26] B[25] B[24] B[23] B[22] B[21] B[20] B[19] B[18] B[17] B[16] B[15] B[14] B[13] B[12] B[11] B[10] B[9] B[8] B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 4 10 1260 850 NJ 850 NJ 850 NJ 850 NJ 850 3430J 740 3740J 670 NJ 670 4400J 690 4710
load netBundle @RD1 32 RD1[31] RD1[30] RD1[29] RD1[28] RD1[27] RD1[26] RD1[25] RD1[24] RD1[23] RD1[22] RD1[21] RD1[20] RD1[19] RD1[18] RD1[17] RD1[16] RD1[15] RD1[14] RD1[13] RD1[12] RD1[11] RD1[10] RD1[9] RD1[8] RD1[7] RD1[6] RD1[5] RD1[4] RD1[3] RD1[2] RD1[1] RD1[0] -autobundled
netbloc @RD1 1 10 3 3820 630 NJ 630 NJ
load netBundle @RD2 32 RD2[31] RD2[30] RD2[29] RD2[28] RD2[27] RD2[26] RD2[25] RD2[24] RD2[23] RD2[22] RD2[21] RD2[20] RD2[19] RD2[18] RD2[17] RD2[16] RD2[15] RD2[14] RD2[13] RD2[12] RD2[11] RD2[10] RD2[9] RD2[8] RD2[7] RD2[6] RD2[5] RD2[4] RD2[3] RD2[2] RD2[1] RD2[0] -autobundled
netbloc @RD2 1 10 3 3780 650 NJ 650 NJ
load netBundle @Data 32 Data[31] Data[30] Data[29] Data[28] Data[27] Data[26] Data[25] Data[24] Data[23] Data[22] Data[21] Data[20] Data[19] Data[18] Data[17] Data[16] Data[15] Data[14] Data[13] Data[12] Data[11] Data[10] Data[9] Data[8] Data[7] Data[6] Data[5] Data[4] Data[3] Data[2] Data[1] Data[0] -autobundled
netbloc @Data 1 8 1 2790 730n
levelinfo -pg 1 0 90 370 680 1050 1350 1700 2180 2590 3220 3590 3990 4270 4540 4750
pagesize -pg 1 -db -bbox -sgen -80 0 4910 910
show
zoom 0.619678
scrollpos 2030 -13
#
# initialize ictrl to current module MultiCycleMIPSCPU work:MultiCycleMIPSCPU:NOFILE
ictrl init topinfo |
