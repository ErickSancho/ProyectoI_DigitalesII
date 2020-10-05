INCLUDES = module_Flops.v module_Recirculacion.v demux_striping.v Demux32_8.v module_PS.v Serial_Paralelo.v Mux8_32.v mux_unstriping.v
INCLUDES_phy = phy_tx.v phy_rx.v phy.v
PRUEBAS = probador_phy.v banco_phy.v
SYNTH = phy_synth.v
CMOS = cmos_cells.v
EXE = phy

Sintesis: 
	@yosys -s script_phy.ys > yosys_output

sed: 
	@sed -i 's/Demux32_8/Demux32_8_synth/g' $(SYNTH)
	@sed -i 's/phy_tx/phy_tx_synth/g' $(SYNTH)
	@sed -i 's/phy_rx/phy_rx_synth/g' $(SYNTH)
	@sed -i 's/module_Flops/module_Flops_synth/g' $(SYNTH)
	@sed -i 's/module_Recirculacion/module_Recirculacion_synth/g' $(SYNTH)
	@sed -i 's/demux_striping/demux_striping_synth/g' $(SYNTH)
	@sed -i 's/module_PS/module_PS_synth/g' $(SYNTH)
	@sed -i 's/Serial_Paralelo/Serial_Paralelo_synth/g' $(SYNTH)
	@sed -i 's/Mux8_32/Mux8_32_synth/g' $(SYNTH)
	@sed -i 's/mux_unstriping/mux_unstriping_synth/g' $(SYNTH)
	@sed -i 's/phy/phy_synth/g' $(SYNTH)


Compilar: Sintesis sed
	@iverilog $(INCLUDES) $(INCLUDES_phy) $(PRUEBAS) $(SYNTH) $(CMOS) -o $(EXE)
	@vvp $(EXE)

ver:
	@nohup gtkwave resultados_phy.vcd &
	@rm -f nohup.out

#AUTOINST:
	#@emacs --batch  $(INCLUDES_phy) $(PRUEBAS) -f verilog-batch-auto
	#@emacs --batch  $(INCLUDES) phy_rx.v -f verilog-batch-auto

