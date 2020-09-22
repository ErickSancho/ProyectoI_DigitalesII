module probador(
    output reg clk_f,
    output reg clk_4f,
    output reg [31:0] data_in,
    output reg valid_in,
    input [31:0] data_out,
    input valid_out);

integer T = 20;             //Defino un multiplicador
initial clk_f <= 'b0;       //Defino el reloj base
always #T clk_f <= ~clk_f;

initial clk_4f <= 'b1;      //Defino el reloj x4
always #(T/4) clk_4f <= ~clk_4f;

initial begin
    $dumpfile("resultados.vcd");
    $dumpvars;

    valid_in <= 'b0;
    data_in <= 'h2E9F1305;

    repeat (2) begin
        @(posedge clk_f);
        @(posedge clk_f);
        valid_in <= 'b1;
        data_in <= data_in + 'h23FF;
        @(posedge clk_f);
        valid_in <= 'b1;
        data_in <= data_in + 'h2AAF;
        @(posedge clk_f);
        valid_in <= 'b0;
        data_in <= data_in + 'hFEA1;
        @(posedge clk_f);
        valid_in <= 'b0;
        data_in <= data_in + 'h123456;
        @(posedge clk_f);
        valid_in <= 'b1;
        data_in <= data_in + 'h321654;
        @(posedge clk_f);
        valid_in <= 'b0;
        data_in <= data_in + 'hFF12FF88;
        @(posedge clk_f);
    end
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