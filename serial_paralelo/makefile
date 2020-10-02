INCLUDE  = probador_SP.v cmos_cells.v banco_SP.v Serial_Paralelo.v Serial_Paralelo_synth.v


Compilar:
	@yosys -s script_demux.ys > salida_yosys
	@sed -i 's/Serial_Paralelo/Serial_Paralelo_synth/g' Serial_Paralelo_synth.v
	@iverilog $(INCLUDE) -o Serial_Paralelo
	@vvp Serial_Paralelo


ver:
	@nohup gtkwave resultadosSP.vcd &
	@rm -f nohup.out