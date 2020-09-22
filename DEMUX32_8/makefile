INCLUDES := probador_demux.v banco_demux.v Demux32_8.v Demux32_8_synth.v cmos_cells.v
Compilar:
	@yosys -s script_demux.ys > yosys_output
	@sed -i 's/Demux32_8/Demux32_8_synth/g' Demux32_8_synth.v
	@iverilog $(INCLUDES) -o Demux 
	@vvp Demux