module probador_phy(
    input [31:0]data_out,
    input [31:0]data_out_synth,
    input valid_out,
    input valid_out_synth,
    input [31:0] data_out_Recirc_Retorno,
    input [31:0] data_out_Recirc_Retorno_synth,
    output reg clk_f,
    output reg clk_2f,
    output reg clk_4f,
    output reg clk_32f,
    output reg reset_L,
    output reg valid_in,
    output reg [31:0]data_in
);

//Definicion de los relojes de control

initial clk_32f <= 1;
initial clk_4f <= 1;
initial clk_2f <= 1;
initial clk_f <= 0;

always #1 clk_32f <= ~clk_32f; //hace toggle cada nanosegundo
always #8 clk_4f <= ~clk_4f; //hace toggle cada 8 nanosegundos
always #16 clk_2f <= ~clk_2f; //hace toggle cada 16 nanosegundos
always #32 clk_f <= ~clk_f; //hace toggle cada 32 nanosegundos

//Bloque de generacion de senales de prueba
initial begin
    $dumpfile("resultados_phy.vcd");
    $dumpvars;

    reset_L<='b0;
    valid_in <= 'b0;
    data_in<='b0;
    @(posedge clk_2f);
    @(posedge clk_2f);
    
    //Se prueba el reset
    repeat (5) begin
        @(posedge clk_2f);
        reset_L<='b1;
        data_in <= data_in + 'h321AE4F;
        valid_in <= 'b0;
    end

    //Se prueba la recirculacion
    repeat (10) begin
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'h320FE14F;
        valid_in <= 'b0;
    end

    //Se prueba la funcionalidad del circuito completo fijando el valor del valid
    repeat (37) begin
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'h2F190A;
        valid_in <= 'b1;
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'h25780A;
        valid_in <= 'b1;
    end

    //Se prueba la funcionalidad del circuito completo variando el valor del valid
    repeat (20) begin
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'h2F190A;
        valid_in <= data_in[3];
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'hABC90A;
    end

    repeat (7) begin
        @(posedge clk_f);
        data_in <= 'b0;
        valid_in <= 'b0;
    end
    $finish;
end


endmodule