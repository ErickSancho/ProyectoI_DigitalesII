module mux_unstriping (
    input clk_2f,
    input reset_L,
    input selector,
    input [31:0] data_in0,
    input valid_in0,
    input [31:0] data_in1,
    input valid_in1,
    output reg [31:0] data_out,
    output reg valid_out);

    reg [31:0] q0, q1; //aqui se almacena la salida del mux    
    reg valid0, valid1; //valor que se va a guardar para pasarlo al final

    always @ (*) begin
        
        q0 = data_in0;
        valid0 = valid_in0;
        q1 = data_in1;
        valid1 = valid_in1;

    end

    always @ (posedge clk_2f) begin

        if (reset_L == 0) begin // Ambas salidas serian puros ceros 
            data_out <= 32'b0;
            valid_out <= 0;
        end

        else begin

            if (selector == 1) begin 
                data_out <= q0;
                valid_out <= valid0;
            end

            else begin 
                data_out <= q1;
                valid_out <= valid1;
            end
 
        end 

    end


endmodule
