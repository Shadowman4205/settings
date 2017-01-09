# Automated OpenVPN install
# Source = https://github.com/Nyr/openvpn-install

wget --no-check-certificate https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh

# Setting up iptables on ubuntu
sudo nano /etc/rc.local
# at the very top of the file before all the # comments insert:

iptables -t nat -A POSTROUTING -s 192.168.6.0/24 -o eth0 -j MASQUERADE # works on SCALEWAY

# or 
iptables -I FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I FORWARD -s 10.8.0.0/24 -j ACCEPT
iptables -I INPUT -p udp --dport 1194 -j ACCEPT
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -j SNAT --to SERVERIPADDRESS
#(remember to replace SERVERIPADDRESS with your IP)

# -------- autostart on debian/ubuntu
# http://askubuntu.com/questions/464264/starting-openvpn-client-automatically-at-boot
# caution: on scaleway the ip ranges can conflict - so change from 10.8.0.0 to 10.9.0.0 in server.conf

autoconnect 
put file to /etc/openvpn/client.conf <- client.ovpn

# ------------ settings for reconnection 
resolv-retry infinite
keepalive 10 120
