`timescale 	1ns	/ 100ps

module banco_phy_tx;

wire data_out_lane0, data_out_lane1;
wire data_out_lane0_synth, data_out_lane1_synth;
wire [31:0] data_out_Recirc_Retorno;
wire [31:0] data_out_Recirc_Retorno_synth;
wire clk_f, clk_2f, clk_4f, clk_32f, reset_L, valid_in;
wire active_lane0, active_lane1;
wire [31:0]data_in;

phy_tx Cond(/*AUTOINST*/
	    // Outputs
        .data_out_Recirc_Retorno(data_out_Recirc_Retorno[31:0]),
	    .data_out_lane0		(data_out_lane0),
	    .data_out_lane1		(data_out_lane1),
	    // Inputs
	    .clk_f			(clk_f),
	    .clk_2f			(clk_2f),
	    .clk_4f			(clk_4f),
	    .clk_32f			(clk_32f),
	    .reset_L			(reset_L),
	    .active_lane0		(active_lane0),
	    .active_lane1		(active_lane1),
	    .valid_in			(valid_in),
	    .data_in			(data_in[31:0]));

phy_tx_synth Synth(/*AUTOINST*/
		   // Outputs
		   .data_out_Recirc_Retorno(data_out_Recirc_Retorno_synth[31:0]),
		   .data_out_lane0	(data_out_lane0_synth),
		   .data_out_lane1	(data_out_lane1_synth),
		   // Inputs
		   .active_lane0	(active_lane0),
		   .active_lane1	(active_lane1),
		   .clk_2f		(clk_2f),
		   .clk_32f		(clk_32f),
		   .clk_4f		(clk_4f),
		   .clk_f		(clk_f),
		   .data_in		(data_in[31:0]),
		   .reset_L		(reset_L),
		   .valid_in		(valid_in));

probador_phy_tx test(/*AUTOINST*/
		     // Outputs
		     .clk_f		(clk_f),
		     .clk_2f		(clk_2f),
		     .clk_4f		(clk_4f),
		     .clk_32f		(clk_32f),
		     .reset_L		(reset_L),
		     .active_lane0	(active_lane0),
		     .active_lane1	(active_lane1),
		     .valid_in		(valid_in),
		     .data_in		(data_in[31:0]),
		     // Inputs
		     .data_out_lane0	(data_out_lane0),
		     .data_out_lane1	(data_out_lane1),
		     .data_out_lane0_synth(data_out_lane0_synth),
		     .data_out_lane1_synth(data_out_lane1_synth),
		     .data_out_Recirc_Retorno(data_out_Recirc_Retorno[31:0]),
		     .data_out_Recirc_Retorno_synth(data_out_Recirc_Retorno_synth[31:0]));

endmodule