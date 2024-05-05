quit -sim
file delete -force work

vlib work
vlog -f files_rtl.f

vsim -novopt processor_tb
log -r /*

add wave -position insertpoint  \
sim:/processor_tb/proc_module/id_stage_0/regf_0/registers
add wave -position insertpoint  \
sim:/processor_tb/proc_module/id_stage_0/regf_0/clk
add wave -position insertpoint  \
sim:/processor_tb/proc_module/id_stage_0/stall

add wave -position insertpoint  \
sim:/processor_tb/proc_module/if_id_IR
add wave -position insertpoint  \
sim:/processor_tb/proc_module/id_ex_IR
add wave -position insertpoint  \
sim:/processor_tb/proc_module/ex_mem_IR
add wave -position insertpoint  \
sim:/processor_tb/proc_module/mem_wb_IR

run -all