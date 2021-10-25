create_project -force -part xc7a35ticsg324-1L thermostat
add_files -fileset sources_1 src/rtl
set_property file_type {VHDL 2008} [get_files -of_objects [get_filesets sources_1]]
exit
