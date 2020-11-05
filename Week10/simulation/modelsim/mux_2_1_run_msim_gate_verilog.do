transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {mux_2_1.vo}

vlog -vlog01compat -work work +incdir+D:/GitHub/CA-IU-Lab/Week10 {D:/GitHub/CA-IU-Lab/Week10/half_adder_testbench.v}
vlog -vlog01compat -work work +incdir+D:/GitHub/CA-IU-Lab/Week10 {D:/GitHub/CA-IU-Lab/Week10/half_adder.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do D:/GitHub/CA-IU-Lab/Week10/Tcl_script1.tcl
