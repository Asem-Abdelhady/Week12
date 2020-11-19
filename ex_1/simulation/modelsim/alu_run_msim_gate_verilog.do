transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {alu.vo}

vlog -vlog01compat -work work +incdir+G:/CA\ labs/Week\ 12/ex_1 {G:/CA labs/Week 12/ex_1/sub.v}
vlog -vlog01compat -work work +incdir+G:/CA\ labs/Week\ 12/ex_1 {G:/CA labs/Week 12/ex_1/srl.v}
vlog -vlog01compat -work work +incdir+G:/CA\ labs/Week\ 12/ex_1 {G:/CA labs/Week 12/ex_1/mux.v}
vlog -vlog01compat -work work +incdir+G:/CA\ labs/Week\ 12/ex_1 {G:/CA labs/Week 12/ex_1/alu_testbench.v}
vlog -vlog01compat -work work +incdir+G:/CA\ labs/Week\ 12/ex_1 {G:/CA labs/Week 12/ex_1/alu.v}
vlog -vlog01compat -work work +incdir+G:/CA\ labs/Week\ 12/ex_1 {G:/CA labs/Week 12/ex_1/add.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  alu_testbench

do G:/CA labs/Week 12/ex_1/Tcl_script1.tcl
