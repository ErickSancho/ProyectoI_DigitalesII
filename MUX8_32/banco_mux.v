`timescale 	1ns				/ 100ps

module Banco;
//Defino los cables internos que emplean las instancias de los bloques del Banco
wire clk_f;
wire clk_4f;
wire [7:0] data_in;
wire valid_in;
wire [31:0] data_out;
wire valid_out;
wire [31:0] data_out_synth;
wire valid_out_synth;

//Modulo Multiplexor Conductual
Mux8_32 mux(
    .data_out   (data_out),
    .valid_out  (valid_out),
    .clk_f      (clk_f),
    .clk_4f     (clk_4f),
    .data_in    (data_in),
    .valid_in   (valid_in)
);

//Modulo Multiplexor Estructural
Mux8_32_synth mux_synth(
    .data_out   (data_out_synth),
    .valid_out  (valid_out_synth),
    .clk_f      (clk_f),
    .clk_4f     (clk_4f),
    .data_in    (data_in),
    .valid_in   (valid_in)
);
//Modulo del Probador
probador test(
    .clk_f              (clk_f),
    .clk_4f             (clk_4f),
    .data_in            (data_in),
    .valid_in           (valid_in),
    .data_out           (data_out),
    .valid_out          (valid_out),
    .data_out_synth     (data_out_synth),
    .valid_out_synth    (valid_out_synth)
);

endmodule