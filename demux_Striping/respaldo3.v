module demux_striping (
    input clk_f,
    input reset_L,
    input selector,
    input [31:0] data_in,
    input valid_in,
    output reg [31:0] data_out0,
    output reg [31:0] data_out1,
    output reg valid_out_0,
    output reg valid_out_1);

    reg [31:0] q1, q2; //aqui se almacena la salida del mux    
    reg valid1, valid2, cambiar0, cambiar1; //valor que se va a guardar para pasarlo al final

    always @ (*) begin
        
        if (selector == 0)begin
            q1 = data_in;
            valid1 = valid_in;
            q2 = 32'b0;
            valid2 = 0;
            cambiar0 = 0;
            cambiar1 = 1;
        end

        else begin
            q2 = data_in;
            valid2 = valid_in;
            q2 = 32'b0;
            valid1 = 0;
            cambiar0 = 1;
            cambiar1 = 0;
        end

    end

    always @ (posedge clk_f) begin

        data_out0 <= 32'b0;
        data_out1 <= 32'b0; 
        valid_out_0 <= 0;
        valid_out_1 <= 0;

        if (reset_L == 0) begin // Ambas salidas serian puros ceros 
            data_out0 <= 32'b0;
            data_out1 <= 32'b0; 
            valid_out_0 <= 0;
            valid_out_1 <= 0;
        end

        if (reset_L == 1) begin
            if (cambiar0 == 1) begin 
                data_out0 <= q1;
                valid_out_0 <= valid1;
            end
            if (cambiar1 == 1) begin 
                data_out1 <= q2;
                valid_out_1 <= valid2;
            end
            // data_out1 <= q2;
            // valid_out_1 <= valid2;
        end 

    end

endmodule