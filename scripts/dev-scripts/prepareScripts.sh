#!/bin/sh
#Run this script to get all SH script's permissions set up for execution.
#This one time run will neet to be run each update, but will get all scripts ready.

#Main Scripts
chmod 755 getUpdatedRepo.sh
chmod 755 getUpdatedRepoIP.sh
chmod 755 setupNewUserprofile.sh

#General Use Scripts
chmod 755 scripts/general-use/backupDirectory.sh
chmod 755 scripts/general-use/backupFullDrive.sh
chmod 755 scripts/general-use/driveReport.sh

#LinuxAdmin-Tools
chmod 755 scripts/linuxAdministration-Tools/create-users/makeUser.sh
chmod 755 scripts/linuxAdministration-Tools/network-informer/get-NetworkInfo.sh

#Firewalls
chmod 755 scripts/linuxAdministration-Tools/firewalls/backupFirewall/backupFirewall.sh
chmod 755 scripts/linuxAdministration-Tools/firewalls/hardenFirewall/hardenFirewall.sh

#Security
chmod 755 scripts/linuxAdministration-Tools/securityScripts/reportProblem.sh
chmod 755 scripts/linuxAdministration-Tools/securityScripts/startupControl/startupControl.sh

#Rotating MOTD
chmod 755 scripts/rotating-motd/deploy.sh

#Other Projects/Server Investigator
chmod 755 other_projects/serverInvestigator/runIPBlockScan.sh
chmod 755 other_projects/serverInvestigator/runServerScan.sh
chmod 755 other_projects/serverInvestigator/miniExamples/bashArrays.sh
chmod 755 other_projects/serverInvestigator/miniExamples/ipVerification.sh
chmod 755 other_projects/serverInvestigator/miniExamples/domainValidation.sh

#Other Projects/Domain Investigator
chmod 755 other_projects/domainInvestigator/runDomainScan.sh

#Specific Use Scripts
chmod 755 scripts/specific-use/webServer/startStopWebServer.sh