module module_Flops ( 
    input 		clk_Flops,
    input 		reset_L,
    input 		valid_in_Flops,
    input [31:0]	data_in_Flops,
    output reg 	valid_out_Flops,
    output reg [31:0]	data_out_Flops);
    

    always @(*)begin
    	if (reset_L == 1)
    		valid_out_Flops = valid_in_Flops;
    	else
    		valid_out_Flops = 0;
    end 
    
    
    
    always @(posedge clk_Flops)begin 
	if (reset_L == 1)begin	
		if(valid_out_Flops == 1)
			data_out_Flops <= data_in_Flops;
		else 
			data_out_Flops <= data_out_Flops;
	end
	
	else 
	    data_out_Flops <= 32'b0;
    end

endmodule
