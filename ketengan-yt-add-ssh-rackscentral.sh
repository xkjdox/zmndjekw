#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/xkjdox/rijrekeksdpdolwoqkqkakodix/main/Nxbdjekkwso.txt | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
DOMAIN=$(cat /etc/v2ray/domain);
clear
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=$(wget -qO- ipinfo.io/ip);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sleep 1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "Thank You For Using Our Services"
echo -e "SSH & OpenVPN Account Info"
echo -e "Username: $Login "
echo -e "Password : $Pass"
echo -e "=========================="
echo -e "Host-IP : 34.101.89.255"
echo -e "Host-Domain : racksketengan-yt.williamstore.site"
echo -e "OpenSSH : 22"
echo -e "Dropbear : 109, 143"
echo -e "SSH WEBSOCKET HTTP : 2052"
echo -e "SSH WEBSOCKET HTTPS : 2053"
echo -e "SSL/TLS :$ssl"
echo -e "PORT KETENGAN YT : 6969"
echo -e "Port Squid :$sqd"
echo -e "OpenVPN : TCP $ovpn http://$IP:81/client-tcp-$ovpn.ovpn"
echo -e "OpenVPN : UDP $ovpn2 http://$IP:81/client-udp-$ovpn2.ovpn"
echo -e "OpenVPN : SSL 442 http://$IP:81/client-tcp-ssl.ovpn"
echo -e "badvpn : 7100-7300"
echo -e "=========================="
echo -e "Expired On : $exp"
