module module_PS ( 
    input 		clk_32f,
    input	 	reset_L,
    input 		valid_in_PS,
    input [7:0]	data_in_PS,
    output reg		data_out_PS);
    
    reg [7:0] data_in1_PS;
    reg [6:0] data_in2_PS = 7'b0;
    reg [2:0] counter; 
                 
    always @(posedge clk_32f)begin	
    	if(reset_L == 1)begin
		if(data_in1_PS[6:0] == data_in2_PS)begin				
			if(counter == 3'b111 || counter == 3'b0)begin
				counter <= 3'b0;
			    	if (valid_in_PS == 1)begin
					data_in1_PS <= data_in_PS;
					data_out_PS <= data_in_PS[7];
				end    		
				else begin
				    	data_in1_PS <= 8'hbc;
				    	data_out_PS <= 1'b1;
				end
			end
		   	else begin
		    		data_out_PS <= data_in1_PS[6];
		    		counter <= {counter} + 1;
		    	end
		end
		else begin
			data_out_PS <= data_in1_PS[6];
			data_in1_PS [0] <= 1'b0;
			data_in1_PS [1] <= data_in1_PS[0];
			data_in1_PS [2] <= data_in1_PS[1];
			data_in1_PS [3] <= data_in1_PS[2];
			data_in1_PS [4] <= data_in1_PS[3];
			data_in1_PS [5] <= data_in1_PS[4];
			data_in1_PS [6] <= data_in1_PS[5];
			data_in1_PS [7] <= data_in1_PS[6];
			counter <= {counter} + 1;
		end
     end
     else begin
	data_in1_PS <= 8'h00;
	data_out_PS <= 1'b0;
	counter <= 3'b0;
     end	
  end    
  
endmodule