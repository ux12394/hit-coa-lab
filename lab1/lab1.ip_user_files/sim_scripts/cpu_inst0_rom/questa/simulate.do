onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cpu_inst0_rom_opt

do {wave.do}

view wave
view structure
view signals

do {cpu_inst0_rom.udo}

run -all

quit -force