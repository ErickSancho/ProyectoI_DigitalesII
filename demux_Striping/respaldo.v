module demux_striping (
    input clk_2f,
    input reset_L,
    input [31:0] data_in,
    input valid_in,
    output reg [31:0] data_out0,
    output reg [31:0] data_out1,
    output reg valid_out_0,
    output reg valid_out_1);

    reg selectorInterno;
    reg [5:0] cambiar;

    always @ (posedge valid_in) begin
        cambiar <= 1;
    end

    always @ (posedge clk_2f) begin

        if (reset_L == 0) begin
            data_out0 <= 32'b0;
            data_out1 <= 32'b0; 
            valid_out_0 <= 0;
            valid_out_1 <= 0;
            selectorInterno <= 0;
            cambiar <= 6'b0;
        end

        else begin

            if (selectorInterno == 0) begin 
                data_out0 <= data_in;
                valid_out_0 <= valid_in;
                if (cambiar > 0) begin
                    selectorInterno <= ~selectorInterno; // El selector solo cambia cuando "saca" algo valido
                    cambiar <= cambiar - 1;
                end
                if (valid_in == 1) begin
                    cambiar <= cambiar + 1;
                end 
            end

            else begin 
                data_out1 <= data_in;
                valid_out_1 <= valid_in;
                if (cambiar > 0) begin
                    selectorInterno <= ~selectorInterno;
                    cambiar <= cambiar - 1;
                end
                if (valid_in == 1) begin
                    cambiar <= cambiar + 1;
                end 
            end
 
        end 

    end

endmodule