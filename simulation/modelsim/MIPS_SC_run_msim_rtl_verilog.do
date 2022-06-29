transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/ALU.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/ALUControl.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/SignExt.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/Adder.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/mux.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/branch_decoder.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/PC.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/MIPS.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/register_file.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/data_memory.v}
vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/inst_mem.v}

vlog -vlog01compat -work work +incdir+C:/quartus/Diplomado/mips_single_cycle {C:/quartus/Diplomado/mips_single_cycle/MIPS_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  MIPS_tb

add wave *
view structure
view signals
run -all
