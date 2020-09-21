CC1=iverilog
CC2=gtkwave
CC3=emacs
TARGET1=bancoDePruebas.v
TARGET2=mux.vcd
compilar:
	$(CC1) -o programa $(TARGET1)
verilog: compilar
	./programa
gtk: verilog
	$(CC2) $(TARGET2)
autoinst:
	$(CC3) --batch $(TARGET1) -f verilog-batch-auto
