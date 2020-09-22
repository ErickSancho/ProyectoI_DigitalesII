module Mux8_32(
    input clk_f,
    input clk_4f,
    input [7:0] data_in,
    input valid_in,
    output reg [31:0] data_out,
    output reg valid_out
);
reg [2:0] counter2 = 'b0;
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
//reg [7:0] A4;
reg [31:0] buffer;


//reg flag;

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

//bloque de control del valid_out
/*
always @(posedge clk_4f) begin
    if ({counter2[2], counter2[1], counter2[0]} == 'b011 && valid_out == 1) begin
        valid_out <= 'b0;
        if (flag == 1) begin
            counter2 <= 'b001;
            //flag<='b0;
        end
        else begin
            counter2 <= 'b000;
        end
    end
    else if () begin
        
    end
    else if (valid_out == 1)  begin
        counter2 <= counter2 + 'b1;
    end
end
*/

endmodule

/*
reg flag2;
always @(posedge clk_f) begin
    if (flag == 'b1) begin
        data_out    <= buffer;
        valid_out   <= 'b1;
        if (valid_in == 'b1) begin
        flag2 <= 'b1;
        end
        else begin
            flag2 <= 'b0;
        end
    end

    if (flag2 == 'b0 && {counter[2], counter[1],counter[0]} == 'b000) begin
        valid_out <= 'b0;
    end
end
*/
