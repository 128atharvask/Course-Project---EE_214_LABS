transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Practice/2020_endsem/DUT.vhdl}
vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Practice/2020_endsem/seq_gen.vhd}

vcom -93 -work work {C:/Users/theas/Documents/EE_214_LABS/Practice/2020_endsem/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
