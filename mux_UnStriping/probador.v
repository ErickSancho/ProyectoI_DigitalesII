module probador (
    output reg clk_f,
    output reg clk_2f,
    output reg reset_L,
    output reg [31:0] data_in0,
    output reg valid_in0,
    output reg [31:0] data_in1,
    output reg valid_in1,
    input [31:0] data_out,
    input valid_out);

    initial begin
        $dumpfile("mux.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables

        // valores iniciales
        reset_L <= 0;
        valid_in0 <= 0;
        valid_in1 <= 0;
        data_in0 <= 32'b0;
        data_in1 <= 32'b0;

        @(posedge clk_f);

        @(posedge clk_f);

        @(posedge clk_f);
        reset_L <= 1;

        @(posedge clk_f);
        data_in0 <= 'hEEEEEEEE; // numero 0xEEEEEEEE
        data_in1 <= 'hEEEEEEE0; // numero 0xEEEEEEE0
        valid_in0 <= 1;
        valid_in1 <= 1;

        @(posedge clk_f);
        data_in0 <= data_in0 + 1;
        data_in1 <= data_in1 + 1;

        @(posedge clk_f);
        valid_in0 <= 0;
        valid_in1 <= 0;

        @(posedge clk_f);

        @(posedge clk_f);
        data_in0 <= data_in0 + 1;
        data_in1 <= data_in1 + 1;
        valid_in0 <= 1;
        valid_in1 <= 1;

        @(posedge clk_f);
        data_in0 <= data_in0 + 1;
        data_in1 <= data_in1 + 1;
        
        @(posedge clk_f);
        valid_in0 <= 0;
        valid_in1 <= 0;

        @(posedge clk_f);

        @(posedge clk_f);

        @(posedge clk_f);

        $finish;
    end

    // clocks
    initial clk_f <= 0;
    initial clk_2f <= 1;

    always #20 clk_f <= ~clk_f; //hace toggle cada 20 nanosegundos
    always #10 clk_2f <= ~clk_2f; //hace toggle cada 10 nanosegundos

endmodule