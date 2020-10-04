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

    always @ (posedge clk_2f) begin

        if (reset_L == 0) begin
            data_out0 <= 32'b0;
            data_out1 <= 32'b0; 
            valid_out_0 <= 0;
            valid_out_1 <= 0;
            selectorInterno <= 0;
        end

        else begin
            if (selectorInterno == 0) begin 
                data_out0 <= data_in;
                valid_out_0 <= valid_in;
                if (valid_in == 1) begin
                    selectorInterno <= ~selectorInterno; // El selector solo cambia cuando "saca" algo valido
                end
                if (valid_out_0 == 1 && valid_in == 0) begin
                    selectorInterno <= ~selectorInterno;
                end
            end

            else begin 
                data_out1 <= data_in;
                valid_out_1 <= valid_in;
                if (valid_in == 1) begin
                    selectorInterno <= ~selectorInterno;
                end
                if (valid_out_1 == 1 && valid_in == 0) begin
                    selectorInterno <= ~selectorInterno;
                end
            end
        end 

    end

endmodule