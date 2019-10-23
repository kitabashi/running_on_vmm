# Installing contrail in VMM
This document provides information on how to install Contrail in the VMM environment.

## Topology
The logical topology of the testbed is as follows :
![topology](images/topology.png)

The devices/nodes in the topology are :
0: GW
    - gateway between juniper's intranet and testbed network
1. Contrail nodes 
    - node0 : Openstack/Contrail contoller
    - node1 : compute
    - node2 : compute
    - node3 : CSN (contrail service node)
    - node4 : Appformix
    - node5 : contrail command
    - node6 : deployer
2. DC Fabric
    - VMX : DCGW
    - spine1, spine2, leaf1, leaf2 : DC Fabric
3. Servers
    - svr1, svr2, svr3 : BMS in the DC Fabric
    - ext1l3 : External node connected through L3
    - ext2l2 : external node connected through L2

subnets in the testbed
- lan1 : 172.16.11.0/24
- vmxg0 (link between GW and VMX ) : 172.16.12.0/31
- vmxg1 (link between GW and VMX ) : 172.16.12.2/31
- management: 172.16.14.0/24

##Setup the testbed
1. Create yaml file for the lab topology, or you can use the following [lab.yaml](lab.yaml)
2. Create the topology using this [script](https://github.com/m1r24n/running_on_vmm) to create the configuration files and upload them into the VMM pod
![create_config](images/create_config.png)
3. Start the topology using the same script
![start_config](images/start_config.png)
4. Record the IP address of GW assigned by VMM
![IP_GW](images/IP_GW.png)
5. Wait for few minutes to allow the VMs to be up and running
6. SSH into GW and verify that all nodes are up and running
![ping1.png](images/ping1.png)
7. (optionally) install wireguard to have direct access to node from your workstation. Follow this [instruction](https://github.com/m1r24n/running_on_vmm/tree/master/install_wg_on_vmm) on how to install wireguard on VM inside the VMM.
8. Establish VPN connection from your workstation to GW
9. Test direct access into the nodes

## Install configuration for junos devices
You can create your own configuration for the junos devices, and use the [junos_config](junos_config/) for IP fabric configuration of the junos devices.

## Prepare the nodes for contrail installation
