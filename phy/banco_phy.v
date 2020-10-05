module banco_phy;

wire clk_f;
wire clk_2f;
wire clk_4f;
wire clk_32f;
wire reset_L;
wire valid_in;
wire [31:0]data_in;

wire active_lane0;
wire active_lane1;
wire [31:0] data_out;
wire valid_out;
wire [31:0] data_out_Recirc_Retorno;

wire active_lane0_synth;
wire active_lane1_synth;
wire [31:0] data_out_synth;
wire valid_out_synth;
wire [31:0] data_out_Recirc_Retorno_synth;

phy cond(/*AUTOINST*/
        // Outputs
        .data_out   (data_out[31:0]),
        .valid_out  (valid_out),
        .data_out_Recirc_Retorno (data_out_Recirc_Retorno[31:0]),
        // Inputs
        .clk_f		(clk_f),
	    .clk_2f		(clk_2f),
	    .clk_4f		(clk_4f),
	    .clk_32f	(clk_32f),
        .reset_L	(reset_L),
        .valid_in   (valid_in),
        .data_in    (data_in));

phy_synth synth(/*AUTOINST*/
        // Outputs
        .data_out   (data_out_synth[31:0]),
        .valid_out  (valid_out_synth),
        .data_out_Recirc_Retorno (data_out_Recirc_Retorno_synth[31:0]),
        // Inputs
        .clk_f		(clk_f),
	    .clk_2f		(clk_2f),
	    .clk_4f		(clk_4f),
	    .clk_32f	(clk_32f),
        .reset_L	(reset_L),
        .valid_in   (valid_in),
        .data_in    (data_in[31:0]));

probador_phy Test(/*AUTOINST*/
        // Onputs
        .clk_f		(clk_f),
	    .clk_2f		(clk_2f),
	    .clk_4f		(clk_4f),
	    .clk_32f	(clk_32f),
        .reset_L	(reset_L),
        .valid_in   (valid_in),
        .data_in    (data_in[31:0]),
        // Inputs
        .data_out   (data_out[31:0]),
        .valid_out  (valid_out),
        .data_out_Recirc_Retorno (data_out_Recirc_Retorno[31:0]),
        .data_out_synth   (data_out_synth[31:0]),
        .valid_out_synth  (valid_out_synth),
        .data_out_Recirc_Retorno_synth (data_out_Recirc_Retorno_synth[31:0]));

endmodule