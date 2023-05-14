
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name TrafficLight -dir "F:/FinishedDE/TrafficLight/planAhead_run_3" -part xc6slx45fgg676-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "TrafficLight.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {freqDivGen.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {TrafficLight.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top TrafficLight $srcset
add_files [list {TrafficLight.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45fgg676-2
