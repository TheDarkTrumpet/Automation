use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additions-- SleepMe-- A wrapper that runs some processes that should be run before the machine fully goes to sleep.-- The order of these operations is important-- Run Prepare Detach-- run script "/Users/dthole/programming/personal/Automation/OSX/Prepare Detach.applescript"-- Run VMWare Suspend Operation (Vmware may not be running, so don't worry about errors)try	run script "/Users/dthole/programming/personal/Automation/OSX/SuspendArchLinux.applescript"end try-- Eject all mounts (from suspend, and any other mounts still sitting on the system)tell application "Finder" to eject (every disk whose ejectable is true and local volume is true and free space is not equal to 0)tell application "Finder" to sleep