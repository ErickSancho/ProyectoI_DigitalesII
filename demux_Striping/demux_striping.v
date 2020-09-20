module demux_striping (
    input clk,
    input reset_L,
    input selector,
    input [31:0] data_in,
    input valid_in,
    output [31:0] data_out0,
    output [31:0] data_out1,
    output valid_out);

    reg [1:0] q1; //aqui se almacena la salida del mux    

    always @ (*) begin
        
        if (selector == 0)begin
            q1 = data_in0;
            valid_out = valid0;
        end

        else begin
            q1 = data_in1;
            valid_out = valid1;
        end

    end

// En proceso

