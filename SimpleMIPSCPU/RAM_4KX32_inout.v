module RAM_4Kx32_inout 
    #(parameter Addr_Width=12,
                Data_Width=32)
    (
    inout [Data_Width-1:0] Data,
    input [Addr_Width-1:0] Addr,
    input Rst,
    input R_W,
    input CS,
    input CLK); 
    
    wire [3:0] CS_i;
    Decoder24 Decoder241(.A(Addr[Addr_Width-1:Addr_Width-2]),.Y(CS_i));

    // bit expansion and word expansion
    RAM_1Kx16_inout CS0_H_16bit(Data[Data_Width-1:Data_Width/2],Addr[Addr_Width-3:0],Rst,R_W,CS_i[0],CLK),
                    CS0_L_16bit(Data[Data_Width/2-1:0],Addr[Addr_Width-3:0],Rst,R_W,CS_i[0],CLK);
    RAM_1Kx16_inout CS1_H_16bit(Data[Data_Width-1:Data_Width/2],Addr[Addr_Width-3:0],Rst,R_W,CS_i[1],CLK),
                    CS1_L_16bit(Data[Data_Width/2-1:0],Addr[Addr_Width-3:0],Rst,R_W,CS_i[1],CLK);
    RAM_1Kx16_inout CS2_H_16bit(Data[Data_Width-1:Data_Width/2],Addr[Addr_Width-3:0],Rst,R_W,CS_i[2],CLK),
                    CS2_L_16bit(Data[Data_Width/2-1:0],Addr[Addr_Width-3:0],Rst,R_W,CS_i[2],CLK);
    RAM_1Kx16_inout CS3_H_16bit(Data[Data_Width-1:Data_Width/2],Addr[Addr_Width-3:0],Rst,R_W,CS_i[3],CLK),
                    CS3_L_16bit(Data[Data_Width/2-1:0],Addr[Addr_Width-3:0],Rst,R_W,CS_i[3],CLK);
    
endmodule
