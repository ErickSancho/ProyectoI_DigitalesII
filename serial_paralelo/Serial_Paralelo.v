module Serial_Paralelo(
    input clk_4f,
    input clk_32f,
    input data_in,
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


//Defino un bloque que me actualiza el contador de BC
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
        if (buffer == 'hBC) begin

            if (counter == 'b11) begin
                counter <= 'b001;
            end
            else if (counter == 'b001) begin
                counter <= 'b010;
            end
            else if (counter == 'b010) begin
                counter <= 'b011;
            end
            else if (counter == 'b011) begin
                counter <= 'b100;
            end
            else begin
                counter <= 'b001; //Caso que llegue el BC y el counter sea indefinido
            end
        end
        if (counter == 'b011) begin
            active <= 'b1;
            counter <= 'b000;
        end
        else begin
            active <= 'b0;
        end
    end

end


//########################################
/*
always @(posedge clk_4f) begin
    if (flag == 'b1) begin
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

*/


endmodule