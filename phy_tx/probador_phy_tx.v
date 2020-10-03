module probador_phy_tx(
    input data_out_lane0,
    input data_out_lane1,
    input data_out_lane0_synth,
    input data_out_lane1_synth,
    input [31:0] data_out_Recirc_Retorno,
    input [31:0] data_out_Recirc_Retorno_synth,
    output reg clk_f,
    output reg clk_2f,
    output reg clk_4f,
    output reg clk_32f,
    output reg reset_L,
    output reg active_lane0,
    output reg active_lane1,
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
    $dumpfile("resultados_phy_tx.vcd");
    $dumpvars;

    reset_L<='b0;
    valid_in <= 'b0;
    data_in<='b0;
    active_lane0<='b0;
    active_lane1<='b0;
    @(posedge clk_2f);
    @(posedge clk_2f);
    
    //Se prueba el reset
    repeat (5) begin
        @(posedge clk_2f);
        reset_L<='b1;
        data_in <= data_in + 'h321AE4F;
        valid_in <= 'b0;
        active_lane0<='b0;
        active_lane1<='b0;
    end

    //Se prueba la recirculacion
    repeat (10) begin
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'h320FE14F;
        valid_in <= 'b0;
        active_lane0 <= 'b0;
        active_lane1 <= 'b0;
    end

    //Se prueba la funcionalidad del circuito completo
    repeat (35) begin
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'h2F190A;
        valid_in <= 'b1;
        active_lane0 <= 'b1;
        active_lane1 <= 'b1;
    end

    //Se prueba la funcionalidad del circuito completo
    repeat (20) begin
        @(posedge clk_2f);
        reset_L <= 'b1;
        data_in <= data_in + 'h2F190A;
        valid_in <= data_in[3];
        active_lane0 <= 'b1;
        active_lane1 <= 'b1;
    end

    $finish;
end


endmodule