`timescale 	1ns				/ 100ps

`include "mux_unstriping.v"
`include "mux_unstriping_E.v"
`include "probador.v"

module BancoPruebas;

    wire clk_f, clk_2f, reset_L, selector, valid_in0, valid_in1, valid_out, valid_out_E;
    wire [31:0] data_in0, data_in1, data_out, data_out_E;

    mux_unstriping cond ( /*AUTOINST*/
			 // Outputs
			 .data_out		(data_out[31:0]),
			 .valid_out		(valid_out),
			 // Inputs
			 .clk_2f		(clk_2f),
			 .reset_L		(reset_L),
			 .selector		(selector),
			 .data_in0		(data_in0[31:0]),
			 .valid_in0		(valid_in0),
			 .data_in1		(data_in1[31:0]),
			 .valid_in1		(valid_in1));

	mux_unstriping_E est ( /*AUTOINST*/
			      // Outputs
			      .data_out_E	(data_out_E[31:0]),
			      .valid_out_E	(valid_out_E),
			      // Inputs
			      .clk_2f		(clk_2f),
			      .data_in0		(data_in0[31:0]),
			      .data_in1		(data_in1[31:0]),
			      .reset_L		(reset_L),
			      .selector		(selector),
			      .valid_in0	(valid_in0),
			      .valid_in1	(valid_in1));

    probador probador_ (/*AUTOINST*/
			// Outputs
			.clk_f		(clk_f),
			.clk_2f		(clk_2f),
			.reset_L	(reset_L),
			.selector	(selector),
			.data_in0	(data_in0[31:0]),
			.valid_in0	(valid_in0),
			.data_in1	(data_in1[31:0]),
			.valid_in1	(valid_in1),
			// Inputs
			.data_out	(data_out[31:0]),
			.valid_out	(valid_out));

endmodule
