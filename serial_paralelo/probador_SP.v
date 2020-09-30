module probador_SP(
    input [7:0] data_out,
    input valid_out,
    input active,
    input [7:0] data_out_synth,
    input valid_out_synth,
    input active_synth,
    output reg clk_4f,
    output reg clk_32f,
    output reg data_in,
    output reg reset
);

//integer T = 20;             //Defino un multiplicador

initial clk_4f <= 'b0;      //Defino el reloj de 4 f
always #(8) clk_4f <= ~clk_4f;

initial clk_32f <= 'b1;       //Defino el reloj de 32 f
always #(1) clk_32f <= ~clk_32f;

initial begin
    $dumpfile("resultadosSP.vcd");
    $dumpvars;

    data_in<='b0;
    reset<='b0;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_4f);
    @(posedge clk_4f);
    reset<='b1;

    //Envio el codigo HEX(BC) 4 veces
    repeat (4) begin
        //@(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <= 'b0;
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <= 'b0;
        @(posedge clk_32f);
        data_in <= 'b0;
        @(posedge clk_32f);
    end
    
    repeat (16) begin
        @(posedge clk_32f);
        data_in <= data_in + 'b1;
        @(posedge clk_32f);
        data_in <= data_in + 'b0;
        @(posedge clk_32f);
        data_in <= 'b0;
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <='b0;
        @(posedge clk_32f);
        data_in <= data_in+ data_in;
    end

    //Envio otro codigo HEX(BC)
    @(posedge clk_32f);
    data_in <= 'b1;
    @(posedge clk_32f);
    data_in <= 'b0;
    @(posedge clk_32f);
    data_in <= 'b1;
    @(posedge clk_32f);
    data_in <= 'b1;
    @(posedge clk_32f);
    data_in <= 'b1;
    @(posedge clk_32f);
    data_in <= 'b1;
    @(posedge clk_32f);
    data_in <= 'b0;
    @(posedge clk_32f);
    data_in <= 'b0;
    
    repeat (3) begin
        @(posedge clk_32f);
        data_in <= 'b0;
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <='b1;
        @(posedge clk_32f);
        data_in <= data_in+ data_in;
        @(posedge clk_32f);
        @(posedge clk_32f);
        data_in <= data_in +'b1;
    end
    repeat (3) begin
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <= 'b1;
        @(posedge clk_32f);
        data_in <='b0;
        @(posedge clk_32f);
        data_in <= data_in + 'b0;
        @(posedge clk_32f);
        @(posedge clk_32f);
        data_in <= data_in +'b1;
    end


    @(posedge clk_4f);
    @(posedge clk_4f);

    $finish;
end
/*
reg error;
always @(posedge clk_4f) begin
    if (data_out == data_out_synth)
    error<='b0;
    else
    error<='b1;
end
*/
endmodule