module phy_tx(
    input clk_f,
    input clk_2f,
    input clk_4f,
    input clk_32f,
    input reset_L,
    input active_lane0,
    input active_lane1,
    input valid_in,
    input [31:0]data_in,
    output reg data_out_lane0,
    output reg data_out_lane1
);
//Definicion de cables de union
wire valid_out_flops;
wire [31:0] data_out_flops;

wire valid_out_Recirc;
wire [31:0] data_out_Recirc;
wire [31:0] data_out_Recirc_Retorno;

wire valid_out_demux_striping_lane0;
wire [31:0] data_out_demux_striping_lane0;
wire valid_out_demux_striping_lane1;
wire [31:0] data_out_demux_striping_lane1;

wire [7:0] data_out_32_8_lane0;
wire valid_out_32_8_lane0;
wire [7:0] data_out_32_8_lane1;
wire valid_out_32_8_lane1;


wire active;
assign active = active_lane0 & active_lane1;

module_Flops Flops(clk_2f, reset_L, valid_in, data_in, valid_out_flops);

module_Recirculacion Recirculacion(active, valid_out_flops, data_out_flops, valid_out_Recirc, data_out_Recirc, data_out_Recirc_Retorno);

demux_striping Demux_striping(clk_2f, reset_L, data_out_Recirc, valid_out_Recirc, data_out_demux_striping_lane0, data_out_demux_striping_lane1, valid_out_demux_striping_lane0, valid_out_demux_striping_lane1);

Demux32_8 demux32_8_lane0(clk_f, clk_4f, data_out_demux_striping_lane0, valid_out_demux_striping_lane0, data_out_32_8_lane0, valid_out_32_8_lane0);

Demux32_8 demux32_8_lane1(clk_f, clk_4f, data_out_demux_striping_lane1, valid_out_demux_striping_lane1, data_out_32_8_lane1, valid_out_32_8_lane1);

//Paralelo Serial();

//Paralelo_Serial();

endmodule