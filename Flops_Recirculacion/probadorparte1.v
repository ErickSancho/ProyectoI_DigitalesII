module probadorparte1( 
	input [31:0]		data_out_Flops,
	input [31:0]		data_out_Retorno,
	input [31:0]		data_out_Recir,
	input   		valid_out_Flops,
	input   		valid_out_Recir,
	output reg 		reset_L,
	output reg 		active,
	output reg 	 	valid_in_Flops,
	output reg 	 	valid_in_Recir,
	output reg [31:0] 	data_in_Flops,
	output reg [31:0] 	data_in_Recir,
	output reg 	 	clk_Flops);

	reg clk;

	initial begin
		$dumpfile("Parte1.vcd");	
		$dumpvars;			
		$display ("\t\t\tclk,\treset_L,\tactive,\tdata_in_Flops,\tdata_in_Recir,\tdata_out_Flops,\tdata_out_Recir,\tvalid_out_Flops,\tvalid_out_Recir");
		$monitor($time,"\t%b\t%b\t\t%b\t\t%h\t\t%h\t\t%h\t\t%h\t\t%b\t%b", clk, reset_L, active, data_in_Flops, data_in_Recir, data_out_Flops, data_out_Recir, valid_out_Flops, valid_out_Recir);
		{data_in_Flops} = 32'b0;
        	{data_in_Recir} = 32'b1;


		repeat (4) begin		
        		
        		@(posedge clk);	
			
			{data_in_Flops} <= {data_in_Flops} + 16'habcd;
            		{data_in_Recir} <= {data_in_Recir} + 16'habcd; 
         
		end
		@(posedge clk);	
		{data_in_Flops} <= 32'b0;	
		{data_in_Recir} <= 32'b0;
	
		repeat (4) begin
		
        		@(posedge clk);	
			
			{data_in_Flops} <= {data_in_Flops} + 16'hefab;
            		{data_in_Recir} <= {data_in_Recir} + 16'hefab; 
         
		end
		@(posedge clk);	
		{data_in_Flops} <= 32'b0;	
		{data_in_Recir} <= 32'b0;
		
        	$finish;		
		
	end
	
	

	//Valid Flops
	initial	valid_in_Flops <= 0;
	always 	#52 valid_in_Flops <= ~valid_in_Flops;	

	//valid Recir
	initial	valid_in_Recir <= 0;
	always 	#22 valid_in_Recir <= ~valid_in_Recir;


	// Reloj
	initial	clk 	<= 0;		
	always		#20 clk <= ~clk;
	
	// Reloj Flops
	initial	clk_Flops <= 0;		
	always		#10 clk_Flops <= ~clk_Flops;
	
	//active
	initial	active <= 0;
	always 	#40 active <= ~active;
		
	//Reset
	initial 	reset_L <= 0;
	always 	#65 reset_L = 1;
endmodule
