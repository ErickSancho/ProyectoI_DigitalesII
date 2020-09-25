`timescale 	1ns				/ 100ps

`include "demux_striping.v"
`include "demux_striping_E.v"
`include "probador.v"

module BancoPruebas;

    wire clk_f, clk_2f, reset_L, selector, valid_in, valid_out_0, valid_out_1, valid_out_0_E, valid_out_1_E;
    wire [31:0] data_in, data_out0, data_out1, data_out0_E, data_out1_E;

    demux_striping cond ( /*AUTOINST*/
			 // Outputs
			 .data_out0		(data_out0[31:0]),
			 .data_out1		(data_out1[31:0]),
			 .valid_out_0		(valid_out_0),
			 .valid_out_1		(valid_out_1),
			 // Inputs
			 .clk_2f		(clk_2f),
			 .reset_L		(reset_L),
			 .data_in		(data_in[31:0]),
			 .valid_in		(valid_in));

	demux_striping_E est ( /*AUTOINST*/
			      // Outputs
			      .data_out0_E	(data_out0_E[31:0]),
			      .data_out1_E	(data_out1_E[31:0]),
			      .valid_out_0_E	(valid_out_0_E),
			      .valid_out_1_E	(valid_out_1_E),
			      // Inputs
			      .clk_2f		(clk_2f),
			      .data_in		(data_in[31:0]),
			      .reset_L		(reset_L),
			      .valid_in		(valid_in));

    probador probador_ (/*AUTOINST*/
			// Outputs
			.clk_f		(clk_f),
			.clk_2f		(clk_2f),
			.reset_L	(reset_L),
			.data_in	(data_in[31:0]),
			.valid_in	(valid_in),
			// Inputs
			.data_out0	(data_out0[31:0]),
			.data_out1	(data_out1[31:0]),
			.valid_out_0	(valid_out_0),
			.valid_out_1	(valid_out_1));

endmodule
