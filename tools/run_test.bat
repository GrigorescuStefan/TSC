::========================================================================================
call clean.bat
::========================================================================================
call build.bat
::========================================================================================
cd ../sim
::vsim -gui -do run.do
::vsim -c -do run.do
::vsim -gui -do run.do -do "do run.do %1 %2 %3 %4" - rulat in modul GUI
::vsim -c -do run.do -do "do run.do %1 %2 %3 %4" - rulat in modul command
vsim -%5 -do run.do -do "do run.do %1 %2 %3 %4 %6 %7"
cd ../tools