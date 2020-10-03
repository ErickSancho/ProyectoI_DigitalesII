module module_Flops ( 
    input 		clk_2f,
    input 		reset_L,
    input 		valid_in,
    input [31:0]	data_in,
    output reg 	valid_out_Flops,
    output reg [31:0]	data_out_Flops);
    

    always @(*)begin
    	if (reset_L == 1)
    		valid_out_Flops = valid_in;
    	else
    		valid_out_Flops = 0;
    end 
    
    
    
    always @(posedge clk_2f)begin 
	if (reset_L == 1)begin	
		data_out_Flops <= data_in;
	end
	
	else 
	    data_out_Flops <= 32'b0;
    end

endmodule
