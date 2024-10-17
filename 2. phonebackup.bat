@echo on

:: goto the adb folder
cd platform-tools-latest-windows
cd platform-tools

:: list of all adb enabled device
adb devices

::  copy	from					                    to(must begin with "..\Backup")
adb pull -a -Z "/sdcard/Download/" 			            "..\Backup"
adb pull -a -Z "/sdcard/Documents/" 			        "..\Backup"
adb pull -a -Z "/sdcard/Mihon/autobackup/" 		        "..\Backup\Mihon Backup"

adb pull -a -Z "/sdcard/dcim/camera/" 			        "..\Backup\Photos & Videos"
adb pull -a -Z "/sdcard/dcim/General Photo Backup/" 	"..\Backup\Photos & Videos"
adb pull -a -Z "/sdcard/pictures/screenshots/" 		    "..\Backup\Photos & Videos"

cmd /k
