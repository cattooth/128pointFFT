# 128pointFFT
The repository contains source files and scripts needed to build ASIC design of 128-point FFT, which is originally was built in MATLAB Simulink. The repository contains the folowing folders and files:



Scripts:
		FFT_PaR.tcl		# PaR script
		FFT_pins		# IO assignment
		FFT_syn.tcl		# script for RTL compiler
		FileEditScript.m	# script for convertion of signals into binary code
		MMMC.tcl		# technology script
		XFAB_fast.tcl		# tcl script for fast corner
		XFAB_slow.tcl		# tcl script for fast slow
		XFAB_typ.tcl		# tcl script for fast tupical
Source:
		Butterfly_Stage.v	# submodules of Butterflies
		Contraints.sdc		# contarints
		FFT128block_FP_libblocks_TB_layout.v 	# testbench for layout
		FFT128block_FP_libblocks_TB.v		# original testbench
		FFTblock_FP_libblocks.v			# Top module
		inpData128Samples.txt			# input signal
		OutData128Samples_im.txt		# output signal (im part)
		OutData128Samples_re.txt		# output signal (re part)
		Subsystem.v			# submodule
		Subsystem_block.v		# submodules
        

