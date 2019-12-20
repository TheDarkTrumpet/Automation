use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additionson displayMessage(message)	display notification "Disk " & message with title "TogglMount" subtitle "Operation Complete"end displayMessage# Toggles the mount/unmounting of the storage disk through Arch Linuxto mountDisk()	do shell script "ssh -t dthole@localarch 'sudo /home/dthole/tools/bin/mount_storage'"	delay 3	tell application "Finder"		mount volume "smb://localarch/Storage_Disk"		mount volume "smb://localarch/Public_Storage_Disk"	end tellend mountDiskto unmountDisk()	tell application "Finder"		eject disk "Storage_Disk"		eject disk "Public_Storage_Disk"	end tell	delay 3	do shell script "ssh -t dthole@localarch 'sudo /home/dthole/tools/bin/umount_storage'"end unmountDisktell application "Finder"	set mounted_Disks to list disksend tellif mounted_Disks does not contain "Storage_Disk" then	mountDisk()	displayMessage("Mounted")else	unmountDisk()	displayMessage("Unmounted")end if