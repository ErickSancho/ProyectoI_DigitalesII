`timescale 	1ns				/ 100ps

module banco;

wire clk_f;
wire clk_4f;
wire [31:0] data_in;
wire valid_in;
wire [31:0] data_out;
wire valid_out;
wire [7:0] Salida_demux;
wire valid_demux;


Demux32_8_synth demux(
    .data_out   (Salida_demux),
    .valid_out  (valid_demux),
    .clk_f      (clk_f),
    .clk_4f     (clk_4f),
    .data_in    (data_in),
    .valid_in   (valid_in)
);

Mux8_32_synth mux(
    .data_out   (data_out),
    .valid_out  (valid_out),
    .clk_f      (clk_f),
    .clk_4f     (clk_4f),
    .data_in    (Salida_demux),
    .valid_in   (valid_demux)
);

probador test(
    .clk_f      (clk_f),
    .clk_4f     (clk_4f),
    .data_in    (data_in),
    .valid_in   (valid_in),
    .data_out   (data_out),
    .valid_out  (valid_out)
);

endmodule