# How to install wireguard on VMM

## Installation 
1. Follow the instruction available from wireguard [web page](https://www.wireguard.com/install/)

The following are the screenshot
![install_wireguard0](image/install_wireguard0.png)
![install_wireguard1](image/install_wireguard1.png)
![install_wireguard2](image/install_wireguard2.png)
![install_wireguard3](image/install_wireguard3.png)

2. On the GW, create the public and private key for GW.

The instruction is avalailable from wireguard [web page](https://www.wireguard.com/quickstart/)

The following are the screeshot

3. Create private and public key for GW
![gw_key](image/gw_key.png)
4. Create private and public key for remote client (in this case for my macbook)
![irzan_mbp_key](image/irzan_mbp_key.png)
5. Create configuration files for GW (server)
![gw_configuration](image/gw_configuration0.png)

GW Configuration
```
[Interface]
Address=192.168.11.1/24
ListenPort=17845
PrivateKey=wAng4a6Zf+rGl25B4KX/CkBi3ffd7SgNBKAvuVDAqGo=

[Peer]
#irzan's MBP
PublicKey=SUX6Dd0JGa53T4bWWGrz7x40S+O0E/aMhpdCVY13PBg=
AllowedIPs=192.168.11.2/32
PersistentKeepalive=30
```
6. Change the /etc/wireguard directory to be accessible only by root
![gw_configuration](image/gw_configuration1.png)
7. Start the wireguard services on GW, and optionally make it permanent.
![gw_configuration](image/gw_configuration2.png)
8. Create configuration for client and import it into client's software
![client_configuration1](image/client_configuration1.png)
Client configuration
```
[Interface]
Address=192.168.11.2/24
PrivateKey=SMt+/gxLsoxKpFQZDHEPr411Tyb97AKNdFVVWivPo0o=
[Peer]
Endpoint=<IP_ADDRESS_OF_GW>:17845
PublicKey=xnJhZ+xPZhQDROaSlV7gftIEigeVPJlN8gZgAMYPiX4=
AllowedIPs=192.168.11.0/24,172.16.11.0/24,172.16.12.0/24, 172.16.14.0/24, 172.16.255.0/24, 172.16.1.0/24
PersistentKeepalive = 30
```
9. Activate the connection and verify that  connection is established

Before client is activated
![client1](image/client_1.png)
![client2](image/client_2.png)
Client is activated
![client3](image/client_3.png)
![client4](image/client_4.png)



