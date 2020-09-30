sintesis1: dependencia1 
	sed -i "s/module_PS(/module_PS_Sint(/g" module_PS_Sint.v 
	sed -i "s/data_out_PS/data_out_PS_Sint/g" module_PS_Sint.v 
  	
dependencia1:
	yosys -s Sintesis1.ys


Resultados: dependencia4 dependencia5
	gtkwave PS.vcd
	
dependencia4:
	iverilog -o BPruebaPS.o BPruebaPS.v
	
dependencia5:
	vvp BPruebaPS.o

Autoinst:
	emacs --batch  BPruebaPS.v  -f verilog-batch-auto
