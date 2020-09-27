module Mux8_32(
    input clk_f,    
    input clk_4f,
    input [7:0] data_in,
    input valid_in,
    input reset,
    output reg [31:0] data_out,
    output reg valid_out
);

reg notclk_4f;      //Creo una senal del reloj clk_4f negado para evitar emplear negedge
always @(*)begin 
    notclk_4f = ~clk_4f; 
end

//Defino tres varibles que se emplean para almacenar las variables mientras
reg [7:0] A1;
reg [7:0] A2;
reg [7:0] A3;

//Actualizo el contador empleando el flanco negativo del reloj de 4 veces la frecuencia f, cuando el valid de entrada se encuentra en alto.
//En el caso que la entre otro dato inmediatamente despues se reinicia el reloj en 1 y no en cero, y continua contando. 
reg [31:0] mem;
always @(posedge notclk_4f) begin
    if (valid_in == 'b1) begin
        mem[7:0] <= data_in;
        mem[15:8] <= mem[7:0];
        mem[23:16]<= mem[15:8];
        mem[31:24]<= mem[23:16];
    end
    else begin
        mem<='b0;
    end
end



//Empleando los contadores almaceno los datos en la variables creadas, y el contador es == 4, cambio el valor de la salida.
always @(posedge clk_f) begin
    if (reset == 'b1 && valid_in == 'b1) begin
        data_out<=mem;
        valid_out<='b1;
    end
    else begin
        valid_out <= 'b0;
        data_out <= 'b0;
    end
end


endmodule