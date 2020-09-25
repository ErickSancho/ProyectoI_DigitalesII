module Demux32_8(
    input clk_f,
    input clk_4f,
    input [31:0] data_in,
    input valid_in,
    output reg [7:0] data_out,
    output reg valid_out
);

reg [2:0] counter = 'b0; //Defino un contador par seleccionar de un miltilexor de 4:1 de 8 bits

reg notclk_4f;      //Creo una senal del reloj clk_4f negado para evitar emplear negedge
always @(*)begin notclk_4f = ~clk_4f; end

always @(posedge notclk_4f) begin
    if (valid_in == 1) begin
        counter<=counter + 'b001;
    end
    if (valid_in == 1 && {counter[2], counter[1],counter[0]} == 'b100) begin
        counter <= 'b001;
    end
    if (valid_in == 0) begin
        counter<='b000;
    end
end

//Salida del mux empleando una especie de multiplexor de 4:1 de 8 bits 
always @(posedge clk_4f) begin
    if ({counter[2], counter[1],counter[0]} == 'b100) begin
        data_out <= data_in[7:0];
        valid_out <= 'b1;
    end
    if ({counter[2], counter[1],counter[0]} == 'b011) begin
        data_out <= data_in[15:8];
        valid_out <= 'b1;
    end
    if ({counter[2], counter[1],counter[0]} == 'b010) begin
        data_out <= data_in[23:16];
        valid_out <= 'b1;
    end
    if ({counter[2], counter[1],counter[0]} == 'b001) begin
        data_out <= data_in[31:24];
        valid_out <= 'b1;
    end
    if (valid_in == 0) begin
        data_out <= 'b0;
        valid_out <= 'b0;
    end
end


endmodule