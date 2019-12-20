use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

# Purpose: Prepare and Detach current session (for moving around), wrapper scripts for other actions
display notification "Preparations for Move" with title "Detach Operation" subtitle "Operation Started"

# Part 1 - Synchronize Git Repositories
do shell script "~/tools/bin/syncRepos"

# Part 2 - Synchronize Org
do shell script "~/tools/bin/syncOrg"

# Part 3 - Unmount Disks
display notification "Preparations for Move" with title "Detach Operation" subtitle "Operation: Unmount Disk Start"

tell application "Finder"
	set mounted_Disks to list disks
end tell

if mounted_Disks contains "Storage_Disk" then
	set myScript to "/Users/dthole/programming/personal/Automation/OSX/TogglMount.applescript"
	run script myScript
end if

display notification "Preparations for Move" with title "Detach Operation" subtitle "Operation Complete"
