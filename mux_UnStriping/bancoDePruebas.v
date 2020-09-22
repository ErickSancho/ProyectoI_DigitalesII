`timescale 	1ns				/ 100ps

`include "mux_unstriping.v"
// `include "demux_striping_E.v"
`include "probador.v"

module BancoPruebas;

    wire clk_f, clk_2f, reset_L, selector, valid_in0, valid_in1, valid_out;
    wire [31:0] data_in0, data_in1, data_out;

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

	// demux_striping_E est ( /*AUTOINST*/
	// 		      // Outputs
	// 		      .data_out0_E	(data_out0_E[31:0]),
	// 		      .data_out1_E	(data_out1_E[31:0]),
	// 		      .valid_out_0_E	(valid_out_0_E),
	// 		      .valid_out_1_E	(valid_out_1_E),
	// 		      // Inputs
	// 		      .clk_2f		(clk_2f),
	// 		      .data_in		(data_in[31:0]),
	// 		      .reset_L		(reset_L),
	// 		      .selector		(selector),
	// 		      .valid_in		(valid_in));

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
