#!/bin/sh
#
# generated.sh - shell script fragment - not very useful on its own
#
# Machine generated for a CPU named "cpu1" as defined in:
# e:\MyProject\My_project\Altera\Q11MultiCore\software\CPU1_syslib\..\..\Nios2Core2.ptf
#
# Generated: 2015-11-15 21:20:15.19

# DO NOT MODIFY THIS FILE
#
#   Changing this file will have subtle consequences
#   which will almost certainly lead to a nonfunctioning
#   system. If you do modify this file, be aware that your
#   changes will be overwritten and lost when this file
#   is generated again.
#
# DO NOT MODIFY THIS FILE

# This variable indicates where the PTF file for this design is located
ptf=e:\MyProject\My_project\Altera\Q11MultiCore\software\CPU1_syslib\..\..\Nios2Core2.ptf

# This variable indicates whether there is a CPU debug core
nios2_debug_core=yes

# This variable indicates how to connect to the CPU debug core
nios2_instance=0

# This variable indicates the CPU module name
nios2_cpu_name=cpu1

# These variables indicate what the System ID peripheral should hold
sidp=0x00401030
id=11u
timestamp=1447592398u

# Include operating system specific parameters, if they are supplied.

if test -f /cygdrive/d/altera/11.0/nios2eds/components/altera_hal/build/os.sh ; then
   . /cygdrive/d/altera/11.0/nios2eds/components/altera_hal/build/os.sh
fi
