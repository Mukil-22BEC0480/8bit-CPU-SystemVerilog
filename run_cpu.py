import os

print("Compiling CPU design...")
os.system("iverilog -o cpu_sim ./rtl/*.v ./tb/tb_cpu.sv")

print("Running simulation...")
os.system("vvp cpu_sim")

print("\nTo view waveform: gtkwave cpu_wave.vcd &")
