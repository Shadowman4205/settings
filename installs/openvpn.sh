# Automated OpenVPN install
# Source = https://github.com/Nyr/openvpn-install

wget --no-check-certificate https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh


# -------- autostart on debian/ubuntu
# http://askubuntu.com/questions/464264/starting-openvpn-client-automatically-at-boot

autoconnect 
put file to /etc/openvpn/client.conf <- client.ovpn

# ------------ settings for reconnection 
resolv-retry infinite
keepalive 10 120

