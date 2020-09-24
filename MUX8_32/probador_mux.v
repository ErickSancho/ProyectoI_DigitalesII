module probador(
    output reg clk_f,
    output reg clk_4f,
    output reg [7:0] data_in,
    output reg valid_in,
    input [31:0] data_out,
    input valid_out,
    input [31:0] data_out_synth,
    input valid_out_synth);

integer T = 20;             //Defino un multiplicador
initial clk_f <= 'b0;       //Defino el reloj base
always #T clk_f <= ~clk_f;

initial clk_4f <= 'b1;      //Defino el reloj x4
always #(T/4) clk_4f <= ~clk_4f;


initial begin
    $dumpfile("resultados8_32.vcd");
    $dumpvars;

    valid_in <= 'b0;
    data_in <= 'h00;
    @(posedge clk_4f);
    @(posedge clk_4f);
    @(posedge clk_4f);
    @(posedge clk_4f);
    @(posedge clk_4f);
    @(posedge clk_4f);


    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b0;
        data_in <= data_in + 'h2F;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b1;
        data_in <= data_in + 'h2F;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b0;
        data_in <= data_in + 'hFF;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b1;
        data_in <= data_in + 'h37;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b1;
        data_in <= data_in + 'h8A;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b0;
        data_in <= data_in + 'h56;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b1;
        data_in <= data_in + 'h90;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b11;
        data_in <= data_in + 'h9F;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b1;
        data_in <= data_in + 'h73;
    end

    repeat (4) begin
        @(posedge clk_4f);
        valid_in <= 'b0;
        data_in <= data_in + 'hA4;
    end

    @(posedge clk_f);
    @(posedge clk_f);
    @(posedge clk_f);
    @(posedge clk_f);


    $finish;
end


reg error;

always @(posedge clk_f) begin
    if (data_out == data_out_synth)
    error<='b0;
    else
    error<='b1;
end

endmodule