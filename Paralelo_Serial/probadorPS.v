module probadorPS( 
	input 			data_out_PS,
	input 			data_out_PS_Sint,
	output reg 		reset_L,
	output reg 	 	valid_in_PS,
	output reg [7:0] 	data_in_PS,
	output reg 	 	clk_PS);

	reg clk;

	initial begin
		$dumpfile("PS.vcd");	
		$dumpvars;			
		$display ("\t\t\tclk,\tclk_PS,\t\treset_L,\tvalid_in_PS,\tdata_in_PS,\tdata_out_PS,\tdata_out_PS_Sint");
		$monitor($time,"\t%b\t%b\t\t%b\t\t%b\t\t%h\t\t%b\t\t%b", clk, clk_PS, reset_L, valid_in_PS, data_in_PS, data_out_PS, data_out_PS_Sint);
		{data_in_PS} = 8'b0;

		repeat (4) begin		
        		
        		@(posedge clk);	
			
			{data_in_PS} <= {data_in_PS} + 8'hab;
         
		end
		@(posedge clk);	
		{data_in_PS} <= 8'b0;
	
		repeat (4) begin
		
        		@(posedge clk);	
			
			{data_in_PS} <= {data_in_PS} + 8'hef;
         
		end
		@(posedge clk);	
		{data_in_PS} <= 8'b0;		
        	$finish;		
		
	end
	
	

	//Valid in PS
	initial	valid_in_PS <= 1;
	always 	#288 valid_in_PS  = 0;

	// Reloj
	initial	clk 	<= 0;		
	always		#32 clk <= ~clk;
	
	// Reloj PS
	initial	clk_PS <= 1;		
	always		#4 clk_PS <= ~clk_PS;
			
	//Reset
	initial 	reset_L <= 0;
	always 	#32 reset_L = 1;
endmodule
