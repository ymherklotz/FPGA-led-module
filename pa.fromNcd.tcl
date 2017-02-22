
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name FPGA-led-lights -dir "/home/yannherklotz/Github/FPGA-led-lights/planAhead_run_4" -part xc6slx9tqg144-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/yannherklotz/Github/FPGA-led-lights/led.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/yannherklotz/Github/FPGA-led-lights} }
set_property target_constrs_file "/home/yannherklotz/Downloads/BPC3011-Papilio_Pro-general.ucf" [current_fileset -constrset]
add_files [list {/home/yannherklotz/Downloads/BPC3011-Papilio_Pro-general.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/yannherklotz/Github/FPGA-led-lights/led.ncd"
if {[catch {read_twx -name results_1 -file "/home/yannherklotz/Github/FPGA-led-lights/led.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/yannherklotz/Github/FPGA-led-lights/led.twx\": $eInfo"
}
