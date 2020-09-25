`timescale 	1ns				/ 1ps

module Banco;

wire clk_4f;
wire clk_32f;
wire data_in;
wire [7:0] data_out;
wire valid_out;
wire active;

wire [7:0] data_out_synth;
wire valid_out_synth;
wire active_synth;

Serial_Paralelo Cond(
    .data_out (data_out),
    .valid_out (valid_out),
    .active (active),
    .clk_4f (clk_4f),
    .clk_32f (clk_32f),
    .data_in (data_in)
);

Serial_Paralelo_synth Synt(
    .data_out (data_out_synth),
    .valid_out (valid_out_synth),
    .active (active_synth),
    .clk_4f (clk_4f),
    .clk_32f (clk_32f),
    .data_in (data_in)
);

probador_SP test(
    .clk_4f (clk_4f),
    .clk_32f (clk_32f),
    .data_in (data_in),
    .data_out (data_out),
    .valid_out (valid_out),
    .active (active),
    .data_out_synth (data_out_synth),
    .valid_out_synth (valid_out_synth),
    .active_synth (active_synth)
);

endmodule