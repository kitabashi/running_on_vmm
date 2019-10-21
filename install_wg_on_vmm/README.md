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
6. Change the /etc/wireguard directory to be accessible only by root
![gw_configuration](image/gw_configuration1.png)
7. Start the wireguard services on GW, and optionally make it permanent.
![gw_configuration](image/gw_configuration2.png)
8. Create configuration for client and import it into client's software
![client_configuration1](image/client_configuration1.png)
9. Activate the connection and verify that  connection is established
Before client is activated
![client1](image/client_1.png)
![client2](image/client_2.png)
Client is activated
![client3](image/client_3.png)
![client4](image/client_4.png)



