module Mux8_32(
    input clk_f,    //No se usa en este caso.
    input clk_4f,
    input [7:0] data_in,
    input valid_in,
    output reg [31:0] data_out,
    output reg valid_out
);

reg [2:0] counter2 = 'b0;   //Defino un contador para llevar el control de la entrada de datos.
reg [2:0] counter = 'b0;    //Defino un contador para almacenar los datos conforme estos llegan.

reg notclk_4f;      //Creo una senal del reloj clk_4f negado para evitar emplear negedge
always @(*)begin 
    notclk_4f<=~clk_4f; 
end

//Actualizo el contador empleando el flanco negativo del reloj de 4 veces la frecuencia f, cuando el valid de entrada se encuentra en alto.
//En el caso que la entre otro dato inmediatamente despues se reinicia el reloj en 1 y no en cero, y continua contando. 
always @(posedge notclk_4f) begin
    if (valid_in == 1) begin
        counter <= counter + 'b001;
    end
    if (valid_in == 1 && {counter[2], counter[1],counter[0]} == 'b100) begin
        counter <= 'b001;
    end
    if (valid_in == 0) begin
        counter <= 'b000;
    end
end

//Defino tres varibles que se emplean para almacenar las variables mientras
reg [7:0] A1;
reg [7:0] A2;
reg [7:0] A3;

//Empleando los contadores almaceno los datos en la variables creadas, y el contador es == 4, cambio el valor de la salida.
always @(posedge clk_4f) begin
    if ({counter[2], counter[1],counter[0]} == 'b001) begin  
        A1 <= data_in;
    end
    else if ({counter[2], counter[1],counter[0]} == 'b010) begin
        A2 <= data_in;
    end
    else if ({counter[2], counter[1],counter[0]} == 'b011) begin
        A3 <= data_in;
    end
    else if ({counter[2], counter[1],counter[0]} == 'b100) begin
        data_out[7:0]   <= data_in;
        data_out[15:8]  <= A3;
        data_out[23:16] <= A2;
        data_out[31:24] <= A1;
        counter2<='b1;
        valid_out <= 'b1;
    end
    else begin
        counter2 <= counter2 + 'b1;
    end
    if (counter2 == 'b100) begin
        if (valid_in == 'b0) begin
            valid_out <= 'b0;
        end
    end
end

endmodule