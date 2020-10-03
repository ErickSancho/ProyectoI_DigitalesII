INCLUDES = phy_tx.v Demux32_8.v module_Flops.v module_Recirculacion.v module_PS.v demux_striping.v
PRUEBAS = probador_phy_tx.v banco_phy_tx.v
SYNTH = phy_tx_synth.v
CMOS = cmos_cells.v

Sintesis: 
	@yosys -s script_phy_tx.ys > yosys_output

sed: 
	@sed -i 's/Demux32_8/Demux32_8_synth/g' phy_tx_synth.v
	@sed -i 's/phy_tx/phy_tx_synth/g' phy_tx_synth.v
	@sed -i 's/module_Flops/module_Flops_synth/g' phy_tx_synth.v
	@sed -i 's/module_Recirculacion/module_Recirculacion_synth/g' phy_tx_synth.v
	@sed -i 's/demux_striping/demux_striping_synth/g' phy_tx_synth.v
	@sed -i 's/module_PS/module_PS_synth/g' phy_tx_synth.v

Compilar: Sintesis sed
	@iverilog $(INCLUDES) $(PRUEBAS) $(SYNTH) $(CMOS) -o phy_tx
	@vvp phy_tx

ver:
	@nohup gtkwave resultados_phy_tx.vcd &
	@rm -f nohup.out

#AUTOINST:
#	@emacs --batch banco_phy_tx_2.v phy_tx_2.v  -f verilog-batch-auto