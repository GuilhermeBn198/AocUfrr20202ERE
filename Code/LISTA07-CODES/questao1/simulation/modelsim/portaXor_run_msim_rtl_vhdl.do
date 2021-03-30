transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/RepositóriosGitHub/AocUfrr20202ERE/Code/LISTA07-CODES/questao1/portaXor.vhd}
vcom -93 -work work {E:/RepositóriosGitHub/AocUfrr20202ERE/Code/LISTA07-CODES/questao1/POr.vhd}
vcom -93 -work work {E:/RepositóriosGitHub/AocUfrr20202ERE/Code/LISTA07-CODES/questao1/PAnd.vhd}
vcom -93 -work work {E:/RepositóriosGitHub/AocUfrr20202ERE/Code/LISTA07-CODES/questao1/PNot.vhd}

