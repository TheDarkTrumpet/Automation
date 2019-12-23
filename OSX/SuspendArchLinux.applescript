use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

set vmrun_cmd to "/Applications/VMware Fusion.app/Contents/Public/vmrun"
set vmrun_opts to "/Users/dthole/Documents/Arch Linux.vmwarevm/Arch Linux.vmx"
do shell script quoted form of vmrun_cmd & " -T ws suspend " & quoted form of vmrun_opts

tell application "VMware Fusion" to quit
