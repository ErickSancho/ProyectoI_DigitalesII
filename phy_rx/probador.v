module probador (
    output reg clk_f,
    output reg clk_2f,
    output reg clk_4f,
    output reg clk_32f,
    output reg data_in0,
    output reg data_in1,
    output reg reset,
    input [31:0] data_out_phyrx,
    input valid_out_phyrx,
    input active0,
    input active1);

    initial begin
        $dumpfile("mux.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables

        // valores iniciales
        data_in0 <= 0;
        data_in1 <= 0;
        reset <= 0;

        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        reset <= 1;

        // Se envia el codigo HEX(BC) 4 veces
        repeat (4) begin
            @(posedge clk_32f);
            data_in0 <= 'b1;
            data_in1 <= 'b1;
            @(posedge clk_32f);
            data_in0 <= 'b0;
            data_in1 <= 'b0;
            @(posedge clk_32f);
            data_in0 <= 'b1;
            data_in1 <= 'b1;
            @(posedge clk_32f);
            data_in0 <= 'b1;
            data_in1 <= 'b1;
            @(posedge clk_32f);
            data_in0 <= 'b1;
            data_in1 <= 'b1;
            @(posedge clk_32f);
            data_in0 <= 'b1;
            data_in1 <= 'b1;
            @(posedge clk_32f);
            data_in0 <= 'b0;
            data_in1 <= 'b0;
            @(posedge clk_32f);
            data_in0 <= 'b0;
            data_in1 <= 'b0;
        end

        // Se envia otra cosa
        repeat (16) begin
            @(posedge clk_32f);
            data_in0 <= data_in0 + 'b1;
            data_in1 <= data_in1 + 'b1;
            @(posedge clk_32f);
            data_in0 <= data_in0 + 'b0;
            data_in1 <= data_in1 + 'b0;
            @(posedge clk_32f);
            data_in0 <= 'b0;
            data_in1 <= 'b0;
            @(posedge clk_32f);
            data_in0 <= 'b1;
            data_in1 <= 'b1;
            @(posedge clk_32f);
            data_in0 <='b0;
            data_in1 <='b0;
            @(posedge clk_32f);
            data_in0 <= data_in0+ data_in0;
            data_in1 <= data_in1+ data_in1;
        end

        // Se envia el codigo HEX(BC) SOLO UNA VEZ
        @(posedge clk_32f);
        data_in0 <= 'b1;
        data_in1 <= 'b1;
        @(posedge clk_32f);
        data_in0 <= 'b0;
        data_in1 <= 'b0;
        @(posedge clk_32f);
        data_in0 <= 'b1;
        data_in1 <= 'b1;
        @(posedge clk_32f);
        data_in0 <= 'b1;
        data_in1 <= 'b1;
        @(posedge clk_32f);
        data_in0 <= 'b1;
        data_in1 <= 'b1;
        @(posedge clk_32f);
        data_in0 <= 'b1;
        data_in1 <= 'b1;
        @(posedge clk_32f);
        data_in0 <= 'b0;
        data_in1 <= 'b0;
        @(posedge clk_32f);
        data_in0 <= 'b0;
        data_in1 <= 'b0;

        // Se envia otra cosa
        repeat (16) begin
            @(posedge clk_32f);
            data_in0 <= data_in0 + 'b1;
            data_in1 <= data_in1 + 'b1;
            @(posedge clk_32f);
            data_in0 <= data_in0 + 'b0;
            data_in1 <= data_in1 + 'b0;
            @(posedge clk_32f);
            data_in0 <= 'b0;
            data_in1 <= 'b0;
            @(posedge clk_32f);
            data_in0 <= 'b1;
            data_in1 <= 'b1;
            @(posedge clk_32f);
            data_in0 <='b0;
            data_in1 <='b0;
            @(posedge clk_32f);
            data_in0 <= data_in0+ data_in0;
            data_in1 <= data_in1+ data_in1;
        end

        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);
        @(posedge clk_32f);

        $finish;
    end

    // clocks
    
    initial clk_32f <= 1;
    initial clk_4f <= 1;
    initial clk_2f <= 1;
    initial clk_f <= 0;

    always #1 clk_32f <= ~clk_32f; //hace toggle cada nanosegundo
    always #8 clk_4f <= ~clk_4f; //hace toggle cada 8 nanosegundos
    always #16 clk_2f <= ~clk_2f; //hace toggle cada 16 nanosegundos
    always #32 clk_f <= ~clk_f; //hace toggle cada 32 nanosegundos
    

endmodule