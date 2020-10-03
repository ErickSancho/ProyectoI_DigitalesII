module phy_tx(
    input clk_f,
    input clk_2f,
    input clk_4f,
    input clk_32f,
    input reset_L,
    input active_lane0,
    input active_lane1,
    input valid_in,
    input [31:0]data_in,
    output reg data_out_lane0,
    output reg data_out_lane1,
    output reg [31:0]data_out_Recirc_Retorno
);

//Definicion de cables de union
wire valid_out_Flops;
wire [31:0] data_out_Flops;

wire valid_out_Recir;
wire [31:0] data_out_Recir;
wire [31:0] data_out_Retorno;

wire valid_out_demux_striping_lane0;
wire [31:0] data_out_demux_striping_lane0;
wire valid_out_demux_striping_lane1;
wire [31:0] data_out_demux_striping_lane1;

wire [7:0] data_out_32_8_lane0;
wire valid_out_32_8_lane0;
wire [7:0] data_out_32_8_lane1;
wire valid_out_32_8_lane1;

wire data_out_PS_lane0;
wire data_out_PS_lane1;

wire active;
assign active = active_lane0 & active_lane1;

module_Flops Flops(/*AUTOINST*/
		   // Outputs
		   .valid_out_Flops	(valid_out_Flops),
		   .data_out_Flops	(data_out_Flops[31:0]),
		   // Inputs
		   .clk_2f		(clk_2f),
		   .reset_L		(reset_L),
		   .valid_in		(valid_in),
		   .data_in		(data_in[31:0]));

module_Recirculacion Recirculacion(/*AUTOINST*/
				   // Outputs
				   .valid_out_Recir	(valid_out_Recir),
				   .data_out_Recir	(data_out_Recir[31:0]),
				   .data_out_Retorno	(data_out_Retorno[31:0]),
				   // Inputs
				   .active		(active),
				   .valid_in_Recir	(valid_out_Flops),
				   .data_in_Recir	(data_out_Flops[31:0]));

demux_striping Demux_striping(/*AUTOINST*/
			      // Outputs
			      .data_out0	(data_out_demux_striping_lane0[31:0]),
			      .data_out1	(data_out_demux_striping_lane1[31:0]),
			      .valid_out_0	(valid_out_demux_striping_lane0),
			      .valid_out_1	(valid_out_demux_striping_lane1),
			      // Inputs
			      .clk_2f		(clk_2f),
			      .reset_L		(reset_L),
			      .data_in		(data_out_Recir[31:0]),
			      .valid_in		(valid_out_Recir));

Demux32_8 demux32_8_lane0(/*AUTOINST*/
			  // Outputs
			  .data_out		(data_out_32_8_lane0[7:0]),
			  .valid_out		(valid_out_32_8_lane0),
			  // Inputs
			  .clk_f		(clk_f),
			  .clk_4f		(clk_4f),
			  .data_in		(data_out_demux_striping_lane0[31:0]),
			  .valid_in		(valid_out_demux_striping_lane0));

Demux32_8 demux32_8_lane1(/*AUTOINST*/
			  // Outputs
			  .data_out		(data_out_32_8_lane1[7:0]),
			  .valid_out		(valid_out_32_8_lane1),
			  // Inputs
			  .clk_f		(clk_f),
			  .clk_4f		(clk_4f),
			  .data_in		(data_out_demux_striping_lane1[31:0]),
			  .valid_in		(valid_out_demux_striping_lane1));

module_PS Paralelo_serial_lane0(/*AUTOINST*/
				// Outputs
				.data_out_PS	(data_out_PS_lane0),
				// Inputs
				.clk_32f		(clk_32f),
				.reset_L	(reset_L),
				.valid_in_PS	(valid_out_32_8_lane0),
				.data_in_PS	(data_out_32_8_lane0[7:0]));

module_PS Paralelo_serial_lane1(/*AUTOINST*/
				// Outputs
				.data_out_PS	(data_out_PS_lane1),
				// Inputs
				.clk_32f		(clk_32f),
				.reset_L	(reset_L),
				.valid_in_PS	(valid_out_32_8_lane1),
				.data_in_PS	(data_out_32_8_lane1[7:0]));

always @(*) begin
    data_out_lane0 = data_out_32_8_lane0;
    data_out_lane1 = data_out_32_8_lane1;
    data_out_Recirc_Retorno = data_out_Retorno;
end

endmodule
