INCLUDE := probador_mux.v cmos_cells.v banco_mux.v Mux8_32.v Mux8_32_synth.v


Compilar:
	@yosys -s script_demux.ys > salida_yosys
	@sed -i 's/Mux8_32/Mux8_32_synth/g' Mux8_32_synth.v
	@iverilog $(INCLUDE) -o Mux
	@vvp Mux

ver:
	@nohup gtkwave resultados8_32.vcd &
	@rm -f nohup.out