<h5>Document network setup </h5>
<b>Objective:</b>

Write a script to dump network info (including ip, dns, open ports) to the commandline and to a file.  Make sure the name of the file includes the date and the purpose.

Add to documentation, GitHub and portfolio

<b>Purpose</b>

This script displays a lot of networking information for your device. It lists: Your hostname, the date, your external IP, all your local addresses, including MAC address, your ports that are in use and by which program, and your server's DNS servers.
This information is both displayed and saved in a file specified for future reference. 
 
<b>Instructions</b>

This script is created to give you a quick reference to your linux machine's networking configuration. 
To use this script, make sure it has the ability to be run. Use the following line to allow the script to be run. 

<i>chmod 777 get-NetworkInfo.sh</i> 

Once the permissions are set, use the following command to run the program:

<i>./get-NetworkInfo.sh</i>

Note: It does not have wireless cards enabeled by default. Uncomment lines that you know your PC needs. 