module Serial_Paralelo(
    input clk_4f,
    input clk_32f,
    input data_in,
    input reset,
    output reg [7:0] data_out,
    output reg valid_out,
    output reg active    
);
//Defino un contador para llevar el registro de bits entrantes
reg [1:0] counter; 

//Defino un buffer el cual representa un data to send
reg [7:0] buffer;

reg not_clk;
always @(*) begin 
    not_clk <= ~ clk_32f;
end

always @(posedge not_clk) begin
    //Actualizo el buffer o "data to send" emplenado el flanco negativo del reloj
    buffer[0] <= data_in;
    buffer[1] <= buffer[0];
    buffer[2] <= buffer[1];
    buffer[3] <= buffer[2];
    buffer[4] <= buffer[3];
    buffer[5] <= buffer[4];
    buffer[6] <= buffer[5];
    buffer[7] <= buffer[6];
end

//Defino un bloque que me actualiza el contador de BC y el active
always @(posedge clk_32f) begin
    if (reset == 'b0) begin
        counter <= 'b0;
        active <= 'b0;
    end
    if (reset == 'b1 && buffer == 'hBC && active == 'b0) begin
        if (counter == 'b0) begin
            counter <= 'b1;
        end
        else if (counter == 'b1) begin
            counter <= 'b10;
        end
        else if (counter == 'b10) begin
            counter <= 'b11;
        end
        else if (counter == 'b11) begin
            counter <= 'b0;
            active<='b1;
        end
        else begin //Cualquier otro valor es cero
            counter <= 'b0;
        end
    end
end


//Defino un bloque que cambia la salida basado en el active 
always @(posedge clk_4f) begin
    if (active == 'b1) begin
        if (buffer == 'hBC) begin
            valid_out <= 'b0;
            data_out <= 'h00;
        end
        else begin
            valid_out <= 'b1;
            data_out <= buffer;
        end
    end
    else begin
        data_out<= 'b0;
        valid_out<= 'b0;
    end
end


endmodule