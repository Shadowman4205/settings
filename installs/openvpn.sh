# Automated OpenVPN install
# Source = https://github.com/Nyr/openvpn-install

wget --no-check-certificate https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh


# -------- autostart on debian/ubuntu
# http://askubuntu.com/questions/464264/starting-openvpn-client-automatically-at-boot
# caution: on scaleway the ip ranges can conflict - so change from 10.8.0.0 to 10.9.0.0 in server.conf

autoconnect 
put file to /etc/openvpn/client.conf <- client.ovpn

# ------------ settings for reconnection 
resolv-retry infinite
keepalive 10 120
