transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Leonel/isel/lsd/lab4/XORs.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/lab4/Full_Adder.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/lab4/Adder_Subtractor.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/lab4/Flags.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/lab4/UnidAritmet.vhd}
vcom -93 -work work {C:/Leonel/isel/lsd/lab4/semi_Adder.vhd}

vcom -93 -work work {C:/Leonel/isel/lsd/lab4/output_files/UnidAritmet_test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  UnidAritmet_test

add wave *
view structure
view signals
run -all
