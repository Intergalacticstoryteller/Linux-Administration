#!/bin/sh
#Run this script to get all SH script's permissions set up for execution.
#This one time run will neet to be run each update, but will get all scripts ready.

#Main Scripts
chmod 777 getUpdatedRepo.sh
chmod 777 setupNewUserprofile.sh

#General Use Scripts
chmod 777 scripts/general-use/backupDirectory.sh
chmod 777 scripts/general-use/backupFullDrive.sh
chmod 777 scripts/general-use/driveReport.sh

#LinuxAdmin-Tools
chmod 777 scripts/linuxAdministration-Tools/create-users/makeUser.sh
chmod 777 scripts/linuxAdministration-Tools/network-informer/get-NetworkInfo.sh

#Rotating MOTD
chmod 777 scripts/rotating-motd/deploy.sh

#Other Projects
chmod 777 other_projects/serverFinder/runExternalScan.sh
chmod 777 other_projects/serverFinder/scanIPBlock.sh

#Specific Use Scripts
chmod 777 scripts/specific-use/webServer/startStopWebServer.sh