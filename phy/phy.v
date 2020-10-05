module phy(
    input clk_f,
    input clk_2f,
    input clk_4f,
    input clk_32f,
    input reset_L,
    input active_lane0,
    input active_lane1,
    input valid_in,
    input [31:0]data_in,
    output reg [31:0]data_out,
	output reg valid_out,
    output reg [31:0] data_out_Recirc_Retorno
);

wire [31:0]data_out_phyrx;
wire valid_out_phyrx;
wire [31:0]data_out_Retorno;

phy_tx TX(/*AUTOINST*/
	  // Outputs
	  .data_out_lane0		(data_out_lane0),
	  .data_out_lane1		(data_out_lane1),
	  .data_out_Recirc_Retorno	(data_out_Retorno[31:0]),
	  // Inputs
	  .clk_f			(clk_f),
	  .clk_2f			(clk_2f),
	  .clk_4f			(clk_4f),
	  .clk_32f			(clk_32f),
	  .reset_L			(reset_L),
	  .active_lane0			(active_lane0),
	  .active_lane1			(active_lane1),
	  .valid_in			(valid_in),
	  .data_in			(data_in[31:0]));

phy_rx RX(/*AUTOINST*/
	  // Outputs
	  .data_out			(data_out_phyrx[31:0]),
	  .valid_out		(valid_out_phyrx),
	  .active0			(active_lane0),
	  .active1			(active_lane1),
	  // Inputs
	  .clk_f			(clk_f),
	  .clk_2f			(clk_2f),
	  .clk_4f			(clk_4f),
	  .clk_32f			(clk_32f),
	  .data_in0			(data_out_lane0),
	  .data_in1			(data_out_lane1),
	  .reset			(reset_L));

always @(*) begin
    data_out = data_out_phyrx;
    valid_out = valid_out_phyrx;
	data_out_Recirc_Retorno = data_out_Retorno;
end

endmodule
