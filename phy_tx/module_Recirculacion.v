module module_Recirculacion ( 
    input 		active,
    input 		valid_in_Recir,
    input [31:0]	data_in_Recir,
    output reg 	valid_out_Recir,
    output reg [31:0]	data_out_Recir,
    output reg [31:0]	data_out_Retorno);
    

    always @(*)begin 
	if (active == 1)begin	
		data_out_Recir = data_in_Recir;
		data_out_Retorno = 32'b0;
		valid_out_Recir = valid_in_Recir;
	end
	
	else begin
	    data_out_Recir = 32'b0;
	    data_out_Retorno = data_in_Recir;
	    valid_out_Recir = 0;
	end
    end

endmodule
