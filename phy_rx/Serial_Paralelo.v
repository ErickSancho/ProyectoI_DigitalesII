module Serial_Paralelo(
    input clk_4f,
    input clk_32f,
    input data_in,
    input reset,
    output reg [7:0] data_out,
    output reg valid_out,
    output reg active    
);
//Defino un buffer el cual representa un data to send
reg [7:0] buffer;
reg [2:0]contador_BC; //Contador que me indica si ya se recibieron 4 veces HEX(BC)
reg [3:0]counter_out; //Contador de salida


reg not_clk_32f; //Reloj invertido del clk_32f
always @(*) begin
    not_clk_32f = ~clk_32f; //inversion del reloj clk_32f
end

always @(posedge not_clk_32f) begin
    //Actualizo el buffer o "data to send" emplenado el flanco negativo del reloj
    if (reset == 'b1) begin
        buffer[0] <= data_in;
        buffer[1] <= buffer[0];
        buffer[2] <= buffer[1];
        buffer[3] <= buffer[2];
        buffer[4] <= buffer[3];
        buffer[5] <= buffer[4];
        buffer[6] <= buffer[5];
        buffer[7] <= buffer[6];
    end
    else begin
        buffer<='b0;
    end
end
/*
reg [7:0]dut_pre1;
reg valid_out;
reg [7:0]data_out_pre2;
reg valid_out_pre2;
*/
//control del counter
always @(posedge clk_32f) begin

    if (reset == 'b1) begin
        
        if (counter_out == 8) begin
            counter_out <= 'b0001;
            if (active==1) begin
                if (buffer == 'hBC) begin
                    valid_out<='b0;
                    data_out <= 'b0;
                end
                else begin
                    valid_out<='b1;
                    data_out<=buffer;
                end
                contador_BC<=0;
            end
            else begin
                if (contador_BC==4) begin
                    active<='b1;
                    contador_BC<=0;
                end
                if (buffer == 'hBC) begin
                    contador_BC <= contador_BC + 'b1;
                end
            end
            

        end
        else begin
            counter_out <= counter_out +'b1;
        end
        //Fin Control del contador
    end
    else begin
        counter_out <= 'b0;  //inicializo el contador en cero
        active <= 'b0; //Valor por defecto del active
        contador_BC<='b0;
        valid_out<='b0;
    end
end
/*
always @(posedge clk_4f) begin
    data_out_pre2<=dut_pre1;
    valid_out_pre2<=valid_out;
    data_out<=data_out_pre2;
    valid_out<=valid_out_pre2;
end
*/

endmodule