# How to install wireguard on VMM

## Installation 
1. Follow the instruction available from wireguard [web page](https://www.wireguard.com/install/)

The following are the screenshot
![install_wireguard0](install_wireguard0.png)
![install_wireguard1](install_wireguard1.png)
![install_wireguard2](install_wireguard2.png)
![install_wireguard3](install_wireguard3.png)

2. On the GW, create the public and private key for GW.

The instruction is avalailable from wireguard [web page](https://www.wireguard.com/quickstart/)

The following are the screeshot

3. Create private and public key for GW
![gw_key](gw_key.png)
4. Create private and public key for remote client (in this case for my macbook)
![irzan_mbp_key](irzan_mbp_key.png)
5. Create configuration files for GW (server)
![gw_configuration](gw_configuration0.png)
6. Change the /etc/wireguard directory to be accessible only by root
![gw_configuration](gw_configuration1.png)
7. Start the wireguard services on GW, and optionally make it permanent.
![gw_configuration](gw_configuration2.png)
8. Create configuration for client and import it into client's software
![client_configuration1](client_configuration1.png)
9. Activate the connection and verify that  connection is established
Before client is activated
![client1](client_1.png)
![client2](client_2.png)
Client is activated
![client3](client_3.png)
![client4](client_4.png)



