`include "Serial_Paralelo.v"
`include "Mux8_32.v"
`include "mux_unstriping.v"
`include "module_Flops.v"

module phy_rx (
    input clk_f,
    input clk_2f,
    input clk_4f,
    input clk_32f,
    input data_in0,
    input data_in1,
    input reset,
    output [31:0] data_out_phyrx,
    output valid_out_phyrx,
    output active0,
    output active1);

wire [7:0] salida_sp0, salida_sp1; // Datos de salida de los serial a paralelo
wire valid_sp0, valid_sp1, active_sp0, active_sp1; // Valid y active de salida de los serial a paralelo
wire [31:0] salida_mux8_32_0, salida_mux8_32_1; // Salidas de los mux 8:32
wire valid_m0, valid_m1; // Valids de salida de los mux 8:32
wire [31:0] salida_unstripping; // Salida del mux unstripping
wire valid_unstripping; // Valid de salida del mux unstripping

Serial_Paralelo sp0 (clk_4f, clk_32f, data_in0, reset, salida_sp0, valid_sp0, active0);

Serial_Paralelo sp1 (clk_4f, clk_32f, data_in1, reset, salida_sp1, valid_sp1, active1);

Mux8_32 mux8_32_0 (clk_f, clk_4f, salida_sp0, valid_sp0, reset, salida_mux8_32_0, valid_m0);

Mux8_32 mux8_32_1 (clk_f, clk_4f, salida_sp1, valid_sp1, reset, salida_mux8_32_1, valid_m1);

mux_unstriping mux_unstriping0 (clk_2f, reset, salida_mux8_32_0, valid_m0, salida_mux8_32_1, valid_m1, salida_unstripping, valid_unstripping);

module_Flops flops (clk_2f, reset, valid_unstripping, salida_unstripping, valid_out_phyrx, data_out_phyrx);

endmodule