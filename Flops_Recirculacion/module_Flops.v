module module_Flops ( 
    input 		clk_2f,
    input 		reset_L,
    input 		valid_in,
    input [31:0]	data_in,
    output reg 	valid_out_Flops,
    output reg [31:0]	data_out_Flops);
    
    reg  valid_out;
    
     
    always @(posedge clk_2f) begin
    	valid_out <= valid_in;
        if (reset_L == 1) begin
        	valid_out_Flops <= valid_out;
		if(valid_out == 1) begin			
			data_out_Flops <= data_in;
		end
		else 
			data_out_Flops <= data_out_Flops;
	end
        else begin
            valid_out_Flops <= 0; 
            data_out_Flops <= 32'b0;
        end            
    end
endmodule
