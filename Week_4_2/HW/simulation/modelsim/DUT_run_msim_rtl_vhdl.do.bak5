transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Week_5_2/Gates.vhdl}
vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Week_5_2/DUT.vhdl}
vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Week_5_2/XOR_GATE.vhdl}
vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Week_5_2/FULL_ADDER.vhdl}
vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Week_5_2/add_sub_4.vhdl}

vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Week_5_2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
