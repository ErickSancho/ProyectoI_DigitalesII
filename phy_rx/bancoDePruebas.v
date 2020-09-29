`timescale 	1ns	/ 100ps

`include "phy_rx.v"
`include "phy_rx_synth.v"
`include "probador.v"

module BancoPruebas;

    wire clk_f, clk_2f, clk_4f, clk_32f;
    wire data_in0, data_in1, reset, valid_out_phyrx, valid_out_phyrx_synth, active0, active1, active0_synth, active1_synth;
    wire [31:0] data_out_phyrx, data_out_phyrx_synth;

    phy_rx phy_rx_conductual ( /*AUTOINST*/
			      // Outputs
			      .data_out_phyrx	(data_out_phyrx[31:0]),
			      .valid_out_phyrx	(valid_out_phyrx),
			      .active0		(active0),
			      .active1		(active1),
			      // Inputs
			      .clk_f		(clk_f),
			      .clk_2f		(clk_2f),
			      .clk_4f		(clk_4f),
			      .clk_32f		(clk_32f),
			      .data_in0		(data_in0),
			      .data_in1		(data_in1),
			      .reset		(reset));

    phy_rx_synth phy_rx_estructual ( /*AUTOINST*/
				    // Outputs
				    .active0_synth	(active0_synth),
				    .active1_synth	(active1_synth),
				    .data_out_phyrx_synth(data_out_phyrx_synth[31:0]),
				    .valid_out_phyrx_synth(valid_out_phyrx_synth),
				    // Inputs
				    .clk_2f		(clk_2f),
				    .clk_32f		(clk_32f),
				    .clk_4f		(clk_4f),
				    .clk_f		(clk_f),
				    .data_in0		(data_in0),
				    .data_in1		(data_in1),
				    .reset		(reset));

    probador probador_ (/*AUTOINST*/
			// Outputs
			.clk_f		(clk_f),
			.clk_2f		(clk_2f),
			.clk_4f		(clk_4f),
			.clk_32f	(clk_32f),
			.data_in0	(data_in0),
			.data_in1	(data_in1),
			.reset		(reset),
			// Inputs
			.data_out_phyrx	(data_out_phyrx[31:0]),
			.valid_out_phyrx(valid_out_phyrx),
			.active0	(active0),
			.active1	(active1));

endmodule
