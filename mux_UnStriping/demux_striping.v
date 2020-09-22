module demux_striping (
    input clk_2f,
    input reset_L,
    input selector,
    input [31:0] data_in,
    input valid_in,
    output reg [31:0] data_out0,
    output reg [31:0] data_out1,
    output reg valid_out_0,
    output reg valid_out_1);

    reg [31:0] q; //aqui se almacena la salida del mux    
    reg valid; //valor que se va a guardar para pasarlo al final

    always @ (*) begin
        
        q = data_in;
        valid = valid_in;

    end

    always @ (posedge clk_2f) begin

        if (reset_L == 0) begin // Ambas salidas serian puros ceros 
            data_out0 <= 32'b0;
            data_out1 <= 32'b0; 
            valid_out_0 <= 0;
            valid_out_1 <= 0;
        end

        else begin

            if (selector == 1) begin 
                data_out0 <= q;
                valid_out_0 <= valid;
            end

            else begin 
                data_out1 <= q;
                valid_out_1 <= valid;
            end
 
        end 

    end


endmodule
