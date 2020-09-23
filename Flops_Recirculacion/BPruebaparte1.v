`timescale 	1ns	/ 100ps

`include "module_Recirculacion.v"
`include "module_Flops.v"
`include "module_Recirculacion_Sint.v"
`include "module_Flops_Sint.v"
`include "cmos_cells.v"
`include "probadorparte1.v"

module BPruebaparte1;

	wire [31:0] data_out_Flops, data_out_Recir, data_out_Retorno, data_out_Flops_Sint, data_out_Recir_Sint, data_out_Retorno_Sint, data_in_Flops, data_in_Recir;
	wire valid_out_Flops, valid_out_Flops_Sint, clk_Flops, reset_L, valid_in_Flops,  valid_in_Flops_Sint, valid_out_Recir, active, valid_in_Recir;
	

	module_Flops Flop_(		/*AUTOINST*/
			   // Outputs
			   .valid_out_Flops	(valid_out_Flops),
			   .data_out_Flops	(data_out_Flops[31:0]),
			   // Inputs
			   .clk_Flops		(clk_Flops),
			   .reset_L		(reset_L),
			   .valid_in_Flops	(valid_in_Flops),
			   .data_in_Flops	(data_in_Flops[31:0]));

	module_Recirculacion Recir_(		/*AUTOINST*/
				    // Outputs
				    .valid_out_Recir	(valid_out_Recir),
				    .data_out_Recir	(data_out_Recir[31:0]),
				    .data_out_Retorno	(data_out_Retorno[31:0]),
				    // Inputs
				    .active		(active),
				    .valid_in_Recir	(valid_in_Recir),
				    .data_in_Recir	(data_in_Recir[31:0]));
	
	module_Flops_Sint Sint_(		/*AUTOINST*/
				// Outputs
				.data_out_Flops_Sint(data_out_Flops_Sint[31:0]),
				.valid_out_Flops_Sint(valid_out_Flops_Sint),
				// Inputs
				.clk_Flops	(clk_Flops),
				.data_in_Flops	(data_in_Flops[31:0]),
				.reset_L	(reset_L),
				.valid_in_Flops	(valid_in_Flops));
				
	
	module_Recirculacion_Sint Sint_2(		/*AUTOINST*/
					 // Outputs
					 .data_out_Recir_Sint	(data_out_Recir_Sint[31:0]),
					 .data_out_Retorno_Sint	(data_out_Retorno_Sint[31:0]),
					 .valid_out_Recir_Sint	(valid_out_Recir_Sint),
					 // Inputs
					 .active		(active),
					 .data_in_Recir		(data_in_Recir[31:0]),
					 .valid_in_Recir	(valid_in_Recir));
	
	
	probadorparte1 probador_(		/*AUTOINST*/
				 // Outputs
				 .reset_L		(reset_L),
				 .active		(active),
				 .valid_in_Flops	(valid_in_Flops),
				 .valid_in_Recir	(valid_in_Recir),
				 .data_in_Flops		(data_in_Flops[31:0]),
				 .data_in_Recir		(data_in_Recir[31:0]),
				 .clk_Flops		(clk_Flops),
				 // Inputs
				 .data_out_Flops	(data_out_Flops[31:0]),
				 .data_out_Retorno	(data_out_Retorno[31:0]),
				 .data_out_Recir	(data_out_Recir[31:0]),
				 .valid_out_Flops	(valid_out_Flops),
				 .valid_out_Recir	(valid_out_Recir));

endmodule
