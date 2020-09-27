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

reg [31:0] mem; //Memoria de datos de entrada
//En este bloque always nos basamos en el flanco positivo creado por el reloj notclk_4f, y empleamos a "mem" como un "shift register"
//el cual va almacenando los datos de entrada.
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

//En este bloque se cambia la salida en el flanco positivo del reloj clk_f, dentro del bloque se basa en la senal de reset y valid_in.
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