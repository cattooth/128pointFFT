### Project Name :				"128-point FFT"
### Author:							"N. V. Kvashina"
### Technology:					"X-FAB 180 nm CMOS, XT018 1243"
### Library:						"D_CELLS_HD, 1.8V"
### Tools:							"Cadence Encounter"
###
### Stage:							"Layout"
### File description:			"Script for PaR"
###
### Work directory:				"Digital_ASIC/Encounter"
### Run command:					"Encounter ../Scripts/FFT_PaR.tcl"

win
puts "############################# Design Import #############################"
set init_gnd_net VSS
set init_lef_file {/Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/techLEF/v7_0_1_1/xt018_xx43_MET4_METMID_METTHK.lef /Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/LEF/v4_0_0/xt018_D_CELLS_HD.lef /Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/LEF/v4_0_0/xt018_xx43_MET4_METMID_METTHK_D_CELLS_HD_mprobe.lef}
set init_design_settop 0
set init_verilog ../Source/FFTblock_FP_libblocks_synth_typ.v
set init_mmmc_file ../Scripts/MMMC.tcl
set init_pwr_net VDD
set init_io_file ../Scripts/FFT_pins
init_design
fit

puts "############################# Floorplanning #############################"
floorPlan -site core_hd -s 5000 5000 40 40 40 40
floorPlan -coreMarginsBy die -site core_hd -s 5000 5000 40 40 40 40
fit

puts "############################# Powerplanning #############################"
clearGlobalNets
globalNetConnect VDD -type pgpin -pin vdd -inst * -module {}
globalNetConnect VSS -type pgpin -pin gnd -inst * -module {}
globalNetConnect VDD -type tiehi -pin vdd -inst * -module {}
globalNetConnect VSS -type tielo -pin gnd -inst * -module {}
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -type core_rings -jog_distance 3.15 -threshold 3.15 -nets {VDD VSS} -follow core -stacked_via_bottom_layer MET1 -layer {bottom MET1 top MET1 right MET2 left MET2} -width 15 -spacing 0.6 -offset 3.15 

addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit MET3 -max_same_layer_jog_length 6 -padcore_ring_bottom_layer_limit MET1 -set_to_set_distance 1000 -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -padcore_ring_top_layer_limit MET3 -spacing 5 -merge_stripes_value 3.15 -layer MET2 -block_ring_bottom_layer_limit MET1 -width 20 -nets {VSS VDD} -stacked_via_bottom_layer MET1	
selectWire 39.6900 6.5100 59.6900 5073.6900 2 VSS
deleteSelectedFromFPlan
selectWire 64.6900 22.1100 84.6900 5058.0900 2 VDD
deleteSelectedFromFPlan

sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { MET1 METTPL } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { MET1 METTPL } -allowLayerChange 1 -nets { VDD VSS } -blockPin useLef -targetViaLayerRange { MET1 METTPL }  
editPowerVia -skip_via_on_pin Standardcell -bottom_layer MET1 -add_vias 1 -top_layer METTPL

### Timing analysis
timeDesign -prePlace -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_prePlace -outDir timingReports/prePlace		
suspend

puts "################################# Placement #################################"
 ### setting the number of used CPUs
setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true 
setDistributeHost -local
setPlaceMode -fp false
### placement
placeDesign -inPlaceOpt 

puts "########################### Timing Analysis and Optimization ############################"
puts "###########################			After Placement			 ############################"
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_preCTS -outDir timingReports/preCTS	
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_preCTS -outDir timingReports/preCTS		
suspend

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
### optimization
optDesign -preCTS		
### checking the optimization result
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_preCTS -outDir timingReports/preCTS_opt		
suspend

puts "######################################## CTS ############################################"
createClockTreeSpec -bufferList {BUHDX0 BUHDX1 BUHDX12 BUHDX2 BUHDX3 BUHDX4 BUHDX6 BUHDX8 DLY1HDX0 DLY1HDX1 DLY2HDX0 DLY2HDX1 DLY4HDX0 DLY4HDX1 DLY8HDX0 DLY8HDX1 INHDX0 INHDX1 INHDX12 INHDX2 INHDX3 INHDX4 INHDX6 INHDX8 STEHDX0 STEHDX1 STEHDX2 STEHDX4} -file Clock.ctstch		
setCTSMode -engine ck
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS

puts "########################### Timing Analysis and Optimization ############################"
puts "########################### 				After CTS 				 ############################"
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postCTS -outDir timingReports/postCTS
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postCTS -outDir timingReports/postCTS
suspend

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
### optimizing
optDesign -postCTS				
optDesign -postCTS -hold	
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postCTS -outDir timingReports/postCTS_opt
suspend

### optimization with incremental option
optDesign -postCTS -hold -incr		
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postCTS -outDir timingReports/postCTS_optIncr
suspend

puts "###################################### Routing ########################################"
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
### fixing antenna violation via bridges
setNanoRouteMode -quiet -drouteFixAntenna true					
### fixing antenna violations via diodes
setNanoRouteMode -quiet -routeInsertAntennaDiode true			
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail

puts "########################### Timing Analysis and Optimization ###########################"
puts "########################### 			After Routing 				 ###########################"
setAnalysisMode -analysisType onChipVariation -skew true -clockPropagation sdcControl
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postRoute -outDir timingReports/postRoute
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postRoute -outDir timingReports/postRoute
suspend

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
### optimizing
optDesign -postRoute				
optDesign -postRoute -hold		
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postRoute -outDir timingReports/postRoute
suspend

### optimization with incremental option
optDesign -postRoute -incr				
optDesign -postRoute -hold -incr
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_postRoute -outDir timingReports/postRoute
suspend

puts "##################################### Fillers #######################################"
getFillerMode -quiet
addFiller -cell FEED7HD FEED5HD FEED3HD FEED2HD FEED25HD FEED1HD FEED15HD FEED10HD -prefix FILLER
suspend

puts "################################## Design Check ###################################"
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg true -diffCellViol false -sameCellViol true -padFillerCellsOverlap false -routingBlkgPinOverlap false -routingCellBlkgOverlap false -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verify_drc -report FFTblock_FP_libblocks.drc.rpt -limit 1000
verifyConnectivity -type all -error 1000 -warning 50
setExtractRCMode -engine postRoute -effortLevel signoff
### extraction
extractRC		

puts "#################################### Sign-Off ####################################"
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_signOff -outDir timingReports/signoff
timeDesign -signoff -hold -pathReports -slackReports -numPaths 50 -prefix FFTblock_FP_libblocks_signOff -outDir timingReports/signoff

all_hold_analysis_views 
all_setup_analysis_views 

write_sdf -view TYPview ../Outputs/FFTblock_FP_libblocks.sdf
saveNetlist ../Outputs/FFTblock_FP_libblocks_layout_logic
saveNetlist ../Outputs/FFTblock_FP_libblocks_layout_phys -includePhysicalCell {FEED7HD FEED10HD FEED15HD FEED1HD FEED25HD FEED2HD FEED3HD FEED5HD}
defOut -floorplan -netlist -routing ../Outputs/FFTblock_FP_libblocks.def

