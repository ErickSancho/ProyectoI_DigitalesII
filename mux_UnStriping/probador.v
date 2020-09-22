module probador (
    output reg clk_f,
    output reg clk_2f,
    output reg reset_L,
    output reg selector,
    output reg [31:0] data_in,
    output reg valid_in,
    input [31:0] data_out0,
    input [31:0] data_out1,
    input valid_out_0,
    input valid_out_1);

    initial begin
        $dumpfile("mux.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables

        // valores iniciales
        reset_L <= 0;
        valid_in <= 0;
        data_in <= 32'b0;

        @(posedge clk_2f);

        @(posedge clk_2f);

        @(posedge clk_2f);
        reset_L <= 1;

        @(posedge clk_2f);
        data_in <= 'hEEEEEEEE; // numero 0xEEEEEEEE
        valid_in <= 1;

        @(posedge clk_2f);
        data_in <= data_in + 1;
        valid_in <= 1;

        @(posedge clk_2f);
        data_in <= data_in + 1;
        valid_in <= 1;

        @(posedge clk_2f);
        data_in <= data_in + 1;
        valid_in <= 1;
        
        @(posedge clk_2f);
        valid_in <= 0;

        @(posedge clk_2f);

        @(posedge clk_2f);

        @(posedge clk_2f);

        @(posedge clk_2f);

        @(posedge clk_2f);


        $finish;
    end

    // clocks
    initial clk_f <= 0;
    initial clk_2f <= 1;

    always #20 clk_f <= ~clk_f; //hace toggle cada 20 nanosegundos
    always #10 clk_2f <= ~clk_2f; //hace toggle cada 10 nanosegundos

    // selector
    initial selector <= 0;

    // El selector se hace 0 cuando el valid se hace uno.
    always @ (valid_in) begin
        if(valid_in == 1) begin
            selector = 0;
        end
    end

    always #20 selector <= ~selector; // hace toggle a la misma frecuencia que clk_f

endmodule