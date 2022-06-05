# Artytest
## Test project for learning proper Xilinx project management
### Create and open project from tcl (bash)
`vivado -source src/Artytest.tcl -nojournal -nolog -tclargs --origin_dir src`
### Update tcl (vivado)
`cd src; write_project_tcl -all_properties -no_copy_sources Artytest.tcl`
