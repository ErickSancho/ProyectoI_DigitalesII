sintesis1: dependencia1 
	sed -i "s/module_Flops(/module_Flops_Sint(/g" module_Flops_Sint.v 
	sed -i "s/valid_out_Flops/valid_out_Flops_Sint/g" module_Flops_Sint.v 
	sed -i "s/data_out_Flops/data_out_Flops_Sint/g" module_Flops_Sint.v 
  	
dependencia1:
	yosys -s Sintesis1.ys


sintesis2: dependencia2 
	sed -i "s/module_Recirculacion(/module_Recirculacion_Sint(/g" module_Recirculacion_Sint.v 
	sed -i "s/valid_out_Recir/valid_out_Recir_Sint/g" module_Recirculacion_Sint.v 
	sed -i "s/data_out_Recir/data_out_Recir_Sint/g" module_Recirculacion_Sint.v
	sed -i "s/data_out_Retorno/data_out_Retorno_Sint/g" module_Recirculacion_Sint.v  
  	
dependencia2:
	yosys -s Sintesis2.ys



Resultados: dependencia4 dependencia5
	gtkwave Parte1.vcd
	
dependencia4:
	iverilog -o BPruebaparte1.o BPruebaparte1.v
	
dependencia5:
	vvp BPruebaparte1.o

Autoinst:
	emacs --batch  BPruebaparte1.v  -f verilog-batch-auto
