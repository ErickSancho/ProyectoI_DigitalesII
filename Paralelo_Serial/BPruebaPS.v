`timescale 	1ns	/ 100ps

`include "module_PS.v"
`include "module_PS_Sint.v"
`include "cmos_cells.v"
`include "probadorPS.v"

module BPruebaPS;

	wire clk_PS, clk, reset_L, valid_in_PS, valid_in_PS_Sint, data_out_PS, data_out_PS_Sint;
	wire [7:0] data_in_PS, data_in_PS_Sint;

	module_PS PS_(		/*AUTOINST*/
		      // Outputs
		      .data_out_PS	(data_out_PS),
		      // Inputs
		      .clk_PS		(clk_PS),
		      .reset_L		(reset_L),
		      .valid_in_PS	(valid_in_PS),
		      .data_in_PS	(data_in_PS[7:0]));


	module_PS_Sint Sint_(		/*AUTOINST*/
			     // Outputs
			     .data_out_PS_Sint	(data_out_PS_Sint),
			     // Inputs
			     .clk_PS		(clk_PS),
			     .data_in_PS	(data_in_PS[7:0]),
			     .reset_L		(reset_L),
			     .valid_in_PS	(valid_in_PS));

	
	probadorPS probador_(		/*AUTOINST*/
			     // Outputs
			     .reset_L		(reset_L),
			     .valid_in_PS	(valid_in_PS),
			     .data_in_PS	(data_in_PS[7:0]),
			     .clk_PS		(clk_PS),
			     // Inputs
			     .data_out_PS	(data_out_PS),
			     .data_out_PS_Sint	(data_out_PS_Sint));

endmodule
