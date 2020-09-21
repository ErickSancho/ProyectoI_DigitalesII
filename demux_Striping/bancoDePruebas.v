`timescale 	1ns				/ 100ps

`include "demux_striping.v"
`include "probador.v"

module BancoPruebas;

    wire clk_f, clk_2f, reset_L, selector, valid_in, valid_out_0, valid_out_1;
    wire [31:0] data_in, data_out0, data_out1;

    demux_striping cond ( /*AUTOINST*/
			 // Outputs
			 .data_out0		(data_out0[31:0]),
			 .data_out1		(data_out1[31:0]),
			 .valid_out_0		(valid_out_0),
			 .valid_out_1		(valid_out_1),
			 // Inputs
			 .clk_f			(clk_f),
			 .reset_L		(reset_L),
			 .selector		(selector),
			 .data_in		(data_in[31:0]),
			 .valid_in		(valid_in));

    probador probador_ (/*AUTOINST*/
			// Outputs
			.clk_f		(clk_f),
			.clk_2f		(clk_2f),
			.reset_L	(reset_L),
			.selector	(selector),
			.data_in	(data_in[31:0]),
			.valid_in	(valid_in),
			// Inputs
			.data_out0	(data_out0[31:0]),
			.data_out1	(data_out1[31:0]),
			.valid_out_0	(valid_out_0),
			.valid_out_1	(valid_out_1));

endmodule
