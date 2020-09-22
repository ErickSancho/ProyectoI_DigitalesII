module Mux8_32(
    input clk_f,
    input clk_4f,
    input [7:0] data_in,
    input valid_in,
    output reg [31:0] data_out,
    output reg valid_out
);

reg [2:0] counter = 'b0; //Defino un contador par seleccionar de un miltilexor de 4:1 de 8 bits

reg notclk_4f;      //Creo una senal del reloj clk_4f negado para evitar emplear negedge
always @(*)begin 
    notclk_4f<=~clk_4f; 
end


//Actuaalizo el contador
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

/*Creo un bloque always donde se pasa los datos recibidos empleando un contador en un buffer 
que almacena los datos esperando que se complete de llenar los espacios y el flanco positivo del reloj clk_f */
reg [7:0] A1;
reg [7:0] A2;
reg [7:0] A3;
reg [7:0] A4;
reg [31:0] buffer;


reg flag;
always @(posedge clk_4f) begin
    if ({counter[2], counter[1],counter[0]} == 'b001) begin
        A1 <= data_in;
    end
    if ({counter[2], counter[1],counter[0]} == 'b010) begin
        A2 <= data_in;
    end
    if ({counter[2], counter[1],counter[0]} == 'b011) begin
        A3 <= data_in;
    end
    if ({counter[2], counter[1],counter[0]} == 'b100) begin
        buffer[7:0]   <= data_in;
        buffer[15:8]  <= A3;
        buffer[23:16] <= A2;
        buffer[31:24] <= A1;
        flag <= 'b1;
    end
end
/*
always @(posedge clk_4f) begin
    if (valid_in == 'b1) begin
        A1 <= data_in;
        A2 <= A1;
        A3 <= A2;
        A4 <= A3;
    end
end
reg flag;
always @(posedge clk_4f) begin
    if ({counter[2], counter[1],counter[0]} == 'b100 || {counter[2], counter[1],counter[0]} == 'b001) begin
        buffer[7:0]   <= A1;
        buffer[15:8]  <= A2;
        buffer[23:16] <= A3;
        buffer[31:24] <= A4;
        flag <= 'b1;
    end
end
*/
reg flag2;
always @(posedge clk_f) begin
    if (flag == 'b1) begin
        data_out    <= buffer;
        valid_out   <= 'b1;
        flag2 <= 'b1;
        flag <= 'b0;
    end
    

    if (flag2 == 'b1 && {counter[2], counter[1],counter[0]} == 'b000) begin
        valid_out <= 'b0;
        flag2 <= 'b0;
    end
end

endmodule