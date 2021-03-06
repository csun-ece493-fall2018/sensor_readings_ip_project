onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sensor_reading_opt

do {wave.do}

view wave
view structure
view signals

do {sensor_reading.udo}

run -all

quit -force
