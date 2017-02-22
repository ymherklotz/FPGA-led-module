
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name FPGA-led-lights -dir "/home/yannherklotz/Github/FPGA-led-lights/planAhead_run_2" -part xc3s250evq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/home/yannherklotz/Downloads/BPC3011-Papilio_Pro-general.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {led.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top led $srcset
add_files [list {/home/yannherklotz/Downloads/BPC3011-Papilio_Pro-general.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250evq100-4
