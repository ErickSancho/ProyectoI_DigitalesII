CC1=iverilog
CC2=gtkwave
CC3=emacs
TARGET1=bancoDePruebas.v 
TARGET2=mux.vcd
INCLUDE:=bancoDePruebas.v cmos_cells.v #Serial_Paralelo.v Mux8_32.v mux_unstriping.v module_Flops.v
compilar:
	$(CC1) -o programa $(INCLUDE) 
verilog: compilar
	./programa
gtk: verilog
	$(CC2) $(TARGET2)
autoinst:
	$(CC3) --batch $(TARGET1) -f verilog-batch-auto 
yosys:
	yosys yosys.ys
	@sed -i 's/phy_rx(/phy_rx_synth(/' phy_rx_synth.v
	@sed -i 's/data_out_phyrx/data_out_phyrx_synth/' phy_rx_synth.v
	@sed -i 's/valid_out_phyrx/valid_out_phyrx_synth/' phy_rx_synth.v
	@sed -i 's/active0/active0_synth/' phy_rx_synth.v
	@sed -i 's/active1/active1_synth/' phy_rx_synth.v
	@sed -i 's/Mux8_32/Mux8_32_synth/' phy_rx_synth.v
	@sed -i 's/Serial_Paralelo/Serial_Paralelo_synth/' phy_rx_synth.v
	@sed -i 's/module_Flops/module_Flops_synth/' phy_rx_synth.v
	@sed -i 's/mux_unstriping/mux_unstriping_synth/' phy_rx_synth.v
	
	
	