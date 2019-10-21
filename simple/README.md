# Simple topology on VMM
# Overview
This is an example of simple topology on VMM, consist of the following
- 2 x vMX
- 2 x vQFX
- 4 x PC 

# Topology
![](simple/simple.png)

Steps to configure
1. Create the [lab.yam](simple/lab.yaml) for this topology. Verify the following :
    - VMM Pod servers
    - user/password to login into VMM pod
    - user/password for junos devices
    - IP address for management on every devices
2. Verify that the images for the VM are in the working directory of VMM (`/vmm/data/user_disks/<username>/`)
![](simple/verifying_images.png)
3. Run the script to upload the configuration files into VMM pod (`vmm.py upload`)
![](simple/vmm_upload.png)
4. Run the script to start the VMs in the VMM pod (`vmm.py start`)
![](simple/vmm_start0.png)
![](simple/vmm_start1.png)
![](simple/vmm_start2.png)
![](simple/vmm_start3.png)
5. Ping the ip address of the jump host, to verify that the topology is up and running and test to access the jump host using ssh
![](simple/vmm_ping_jh.png)
![](simple/vmm_access0.png)
6. for Centos, the login (user/password) are :
- centos/pass01
- root/pass01
7. for Ubuntu, the login (user/password) is :
- ubuntu/pass01
8. From the jump host, try to access other devices in the topology
![](simple/vmm_access1.png)
![](simple/vmm_access2.png)
![](simple/vmm_access3.png)
9. The serial console information for each devices can be displayed using command `vmm get_serial`
![][simple/vmm_get_serial0.png)
![][simple/vmm_get_serial1.png)

10. Now you can play around with the topology by uploading or configuring the devices
