INCLUDE := cmos_cells.v probador_demux.v banco.v Demux32_8_synth.v Mux8_32_synth.v

Compilar:
	@iverilog $(INCLUDE) -o Prueba_ambos
	@vvp Prueba_ambos

ver:
	@nohup gtkwave resultados.vcd &
	@rm -f nohup.out