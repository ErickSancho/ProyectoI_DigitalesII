module mux_unstriping (
    input clk_2f,
    input reset_L,
    input [31:0] data_in0,
    input valid_in0,
    input [31:0] data_in1,
    input valid_in1,
    output reg [31:0] data_out,
    output reg valid_out);

    reg selectorInterno;

    always @ (posedge clk_2f) begin
        if (reset_L == 1) 
            selectorInterno <= ~selectorInterno;
        else 
            selectorInterno <= 0;
    end

    always @(*) begin
        if (selectorInterno == 0) begin
            data_out = data_in1;
            valid_out = valid_in1;
        end
        else begin
            data_out = data_in0;
            valid_out = valid_in0;
        end

    end

/*
    always @ (posedge clk_2f) begin

        if (reset_L == 0) begin // Ambas salidas serian puros ceros 
            data_out <= 32'b0;
            valid_out <= 0;
            selectorInterno <= 0;
        end

        else if (reset_L==1) begin

            if (selectorInterno == 0) begin 
                data_out <= data_in0;
                valid_out <= valid_in0;
                if (valid_in0 == 1) begin
                    selectorInterno <= selectorInterno + 1;
                end
            end

            else begin 
                data_out <= data_in1;
                valid_out <= valid_in1;
                if (valid_in1 == 1) begin
                    selectorInterno <= selectorInterno + 1;
                end
            end
 
        end 
    end
*/
endmodule