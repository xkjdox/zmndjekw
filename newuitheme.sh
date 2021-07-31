#!/bin/bash
#Menu

city=$( wget -qO- ipinfo.io/city );
isp=$( wget -qO- ipinfo.io/org | cut -d " " -f 2-10 );
ipvps=$( wget -qO- ipinfo.io/ip );
domain=$( cat /etc/v2ray/domain );
scversion=$( cat /home/ver );
figlet -f small -t "WILLIAM"
echo -e "\e[032;1mt.me/user_legend\e[0m"
echo -e "================================================================"
echo -e "\e[032;1mSERVER VPS\e[0m     = $city"
echo -e "\e[032;1mISP VPS\e[0m        = $isp"
echo -e "\e[032;1mIP VPS\e[0m         = $ipvps"
echo -e "\e[032;1mDOMAIN VPS\e[0m     = $domain"
echo -e "\e[032;1mVERSI SCRIPT\e[0m   = $scversion"
echo -e "================================================================"
echo -e ""
echo -e "=============================-MENU-============================="
echo -e ""
echo -e "=========================-SSH & OPENVPN-========================"
echo -e "* \e[032;1madd-ssh\e[0m      = Create SSH WS & OpenVPN Account"
echo -e "* \e[032;1mtrial-ssh\e[0m    = Create SSH WS & OpenVPN Trial Account"
echo -e "* \e[032;1mrenew\e[0m        = Extending SSH & OpenVPN Account Active Life"
echo -e "* \e[032;1mhapus\e[0m        = Delete SSH & OpenVPN Account"
echo -e "* \e[032;1mdel-exp\e[0m      = Delete SSH & OpenVPN Expired Account"
echo -e "* \e[032;1mcek\e[0m          = Check User Login SSH & OpenVPN"
echo -e "* \e[032;1mmember\e[0m       = Daftar Member SSH & OpenVPN"
echo -e "* \e[032;1mautokill\e[0m     = Set up Autokill SSH"
echo -e "* \e[032;1mceklim\e[0m       = Displays Users Who Do Multi Login SSH"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-VMESS-==========================="
echo -e "* \e[032;1madd-vmess\e[0m    = Create V2RAY Vmess Websocket Account"
echo -e "* \e[032;1mdel-vmess\e[0m    = Deleting V2RAY Vmess Websocket Account"
echo -e "* \e[032;1mrenew-vmess\e[0m  = Extending Vmess Account Active Life"
echo -e "* \e[032;1mcek-vmess\e[0m    = Check User Login V2RAY"
echo -e "* \e[032;1mcertv2ray\e[0m    = Renew Certificate V2RAY Account"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-VLESS-==========================="
echo -e "* \e[032;1madd-vless\e[0m    = Create V2RAY Vless Websocket Account"
echo -e "* \e[032;1mdel-vless\e[0m    = Deleting V2RAY Vless Websocket Account"
echo -e "* \e[032;1mrenew-vless\e[0m  = Extending Vless Account Active Life"
echo -e "* \e[032;1mcek-vless\e[0m    = Check User Login V2RAY"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-TROJAN-=========================="
echo -e "* \e[032;1madd-tr\e[0m       = Create Trojan Account"
echo -e "* \e[032;1mdel-tr\e[0m       = Deleting Trojan Account"
echo -e "* \e[032;1mrenew-tr\e[0m     = Extending Trojan Account Active Life"
echo -e "* \e[032;1mcek-tr\e[0m       = Check User Login Trojan"
echo -e "==============================================================="
echo -e ""
echo -e "===========================-TROJAN-GO-=========================="
echo -e "* \e[032;1madd-trgo\e[0m     = Create Trojan Account"
echo -e "* \e[032;1mdel-trgo\e[0m     = Deleting Trojan Account"
echo -e "* \e[032;1mrenew-trgo\e[0m   = Deleting Trojan Account"
echo -e "* \e[032;1mcek-trgo\e[0m     = Deleting Trojan Account"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-L2TP-============================"
echo -e "* \e[032;1madd-l2tp\e[0m     = Creating L2TP Account"
echo -e "* \e[032;1mdel-l2tp\e[0m     = Deleting L2TP Account"
echo -e "* \e[032;1mrenew-l2tp\e[0m   = Extending L2TP Account Active Life"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-PPTP-============================"
echo -e "* \e[032;1madd-pptp\e[0m     = Create Account PPTP"
echo -e "* \e[032;1mdel-pptp\e[0m     = Delete PPTP Account"
echo -e "* \e[032;1mrenew-pptp\e[0m   = Extending PPTP Account Active Life"
echo -e "* \e[032;1mcek-pptp\e[0m     = Check User Login PPTP"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-SSTP-============================"
echo -e "* \e[032;1madd-sstp\e[0m     = Create Account SSTP"
echo -e "* \e[032;1mdel-sstp\e[0m     = Delete SSTP Account"
echo -e "* \e[032;1mrenew-sstp\e[0m   = Extending SSTP Account Active Life"
echo -e "* \e[032;1mcek-sstp\e[0m     = Check User Login SSTP"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-SSR-============================="
echo -e "* \e[032;1madd-ssr\e[0m      = Create SSR Account"
echo -e "* \e[032;1mdel-ssr\e[0m      = Deleting SSR Account"
echo -e "* \e[032;1mrenew-ssr\e[0m    = Extending SSR Account Active Life"
echo -e "* \e[032;1mssr\e[0m          = Show Other SSR Menu"
echo -e "==============================================================="
echo -e ""
echo -e "========================-SHADOWSOCKS OBFS-====================="
echo -e "* \e[032;1madd-ss\e[0m       = Creating Shadowsocks Account"
echo -e "* \e[032;1mdel-ss\e[0m       = Delete Shadowsocks Account"
echo -e "* \e[032;1mrenew-ss\e[0m     = Extending Shadowsocks Account Active Life"
echo -e "* \e[032;1mcek-ss\e[0m       = Check User Login Shadowsocks"
echo -e "==============================================================="
echo -e ""
echo -e "===========================-WIREGUARD-========================="
echo -e "* \e[032;1madd-wg\e[0m       = Create Wireguard Account"
echo -e "* \e[032;1mdel-wg\e[0m       = Delete Wireguard Account"
echo -e "* \e[032;1mcek-wg\e[0m       = Check User Login Wireguard"
echo -e "* \e[032;1mrenew-wg\e[0m     = Extending Wireguard Account Active Life"
echo -e "* \e[032;1mwg show\e[0m      = Check Wireguard User Interface"
echo -e "==============================================================="
echo -e ""
echo -e "=============================-SYSTEM-=========================="
echo -e "* \e[032;1madd-host\e[0m     = Change Domain Host For VPS"
echo -e "* \e[032;1madd-sub\e[0m      = Change Firstname Host For VPS"
echo -e "* \e[032;1mchange-port\e[0m  = Change Port Of Some Service"
echo -e "* \e[032;1mcek-service\e[0m  = Cek Some Service Running Or Not"
echo -e "* \e[032;1mautobackup\e[0m   = Autobackup Data VPS"
echo -e "* \e[032;1mbackup\e[0m       = Backup Data VPS"
echo -e "* \e[032;1mrestore\e[0m      = Restore Data VPS"
echo -e "* \e[032;1mrestart\e[0m      = Restart Service Dropbear, Squid, OpenVPN dan SSH"
echo -e "* \e[032;1mwbmn\e[0m         = Webmin Menu"
echo -e "* \e[032;1mlimit-speed\e[0m  = Limit Bandwith Speed Server"
echo -e "* \e[032;1mram\e[0m          = Check Usage of VPS Ram"
echo -e "* \e[032;1mreboot\e[0m       = Reboot VPS"
echo -e "* \e[032;1mspeedtest\e[0m    = Speedtest VPS"
echo -e "* \e[032;1minfo\e[0m         = Displaying System Information"
echo -e "* \e[032;1mabout\e[0m        = Info Script Auto Install"
echo -e "* \e[032;1mexit\e[0m         = Exit From VPS "
echo -e "==============================================================="
echo -e ""
