module phy_rx (
    input clk_f,
    input clk_2f,
    input clk_4f,
    input clk_32f,
    input data_in0,
    input data_in1,
    input reset,
    output reg [31:0] data_out,
    output reg valid_out,
    output reg active0,
    output reg active1);

wire [7:0] salida_sp0, salida_sp1; // Datos de salida de los serial a paralelo
wire valid_sp0, valid_sp1, active_sp0, active_sp1; // Valid y active de salida de los serial a paralelo
wire [31:0] salida_mux8_32_0, salida_mux8_32_1; // Salidas de los mux 8:32
wire valid_m0, valid_m1; // Valids de salida de los mux 8:32
wire [31:0] salida_unstripping; // Salida del mux unstripping
wire valid_unstripping; // Valid de salida del mux unstripping

wire [31:0]data_out_phyrx;
wire valid_out_phyrx;

wire active_lane0, active_lane1;




Serial_Paralelo sp0 (/*AUTOINST*/
		     // Outputs
		     .data_out		(salida_sp0[7:0]),
		     .valid_out		(valid_sp0),
		     .active		(active_lane0),
		     // Inputs
		     .clk_4f		(clk_4f),
		     .clk_32f		(clk_32f),
		     .data_in		(data_in0),
		     .reset		(reset));

Serial_Paralelo sp1 (/*AUTOINST*/
		     // Outputs
		     .data_out		(salida_sp1[7:0]),
		     .valid_out		(valid_sp1),
		     .active		(active_lane1),
		     // Inputs
		     .clk_4f		(clk_4f),
		     .clk_32f		(clk_32f),
		     .data_in		(data_in1),
		     .reset		(reset));
//Bloque de atraso de dos ciclos de reloj para el lane 1

reg [7:0]salida_sp1_a1;
reg [7:0]salida_sp1_a2;
reg valid_sp1_a1;
reg valid_sp1_a2;

always @(posedge clk_4f) begin
    salida_sp1_a1<=salida_sp1;
    salida_sp1_a2<=salida_sp1_a1;
    valid_sp1_a1<=valid_sp1;
    valid_sp1_a2<=valid_sp1_a1;
end

Mux8_32 mux8_32_0 (/*AUTOINST*/
		   // Outputs
		   .data_out		(salida_mux8_32_0[31:0]),
		   .valid_out		(valid_m0),
		   // Inputs
		   .clk_f		(clk_f),
		   .clk_4f		(clk_4f),
		   .data_in		(salida_sp0[7:0]),
		   .valid_in		(valid_sp0),
		   .reset		(reset));

Mux8_32 mux8_32_1 (/*AUTOINST*/
		   // Outputs
		   .data_out		(salida_mux8_32_1[31:0]),
		   .valid_out		(valid_m1),
		   // Inputs
		   .clk_f		(clk_f),
		   .clk_4f		(clk_4f),
		   .data_in		(salida_sp1[7:0]),
		   .valid_in		(valid_sp1),
		   .reset		(reset));


wire [31:0]data_lane0;
wire valid_lane0;

module_Flops flops0_striping (/*AUTOINST*/
		    // Outputs
		    .valid_out_Flops	(valid_lane0),
		    .data_out_Flops	(data_lane0[31:0]),
		    // Inputs
		    .clk_2f		(clk_2f),
		    .reset_L		(reset),
		    .valid_in		(valid_m0),
		    .data_in		(salida_mux8_32_0[31:0]));


mux_unstriping mux_unstriping0 (/*AUTOINST*/
				// Outputs
				.data_out	(salida_unstripping[31:0]),
				.valid_out	(valid_unstripping),
				// Inputs
				.clk_2f		(clk_2f),
				.reset_L	(reset),
				.data_in0	(salida_mux8_32_0[31:0]), //Cambio
				.valid_in0	(valid_m0),					//Cambio
				.data_in1	(salida_mux8_32_1[31:0]),
				.valid_in1	(valid_m1));

module_Flops flops (/*AUTOINST*/
		    // Outputs
		    .valid_out_Flops	(valid_out_phyrx),
		    .data_out_Flops	(data_out_phyrx[31:0]),
		    // Inputs
		    .clk_2f		(clk_2f),
		    .reset_L		(reset),
		    .valid_in		(valid_unstripping),
		    .data_in		(salida_unstripping[31:0]));

always @(*) begin
    data_out = data_out_phyrx;
    valid_out = valid_out_phyrx;
    active0 = active_lane0;
    active1 = active_lane1;
end

endmodule
