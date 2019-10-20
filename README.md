# Running VM on VMM
release 0.1
## Overview
This script is used to create configuration files, which will be used to run VM (Virtual Machines) on Juniper's VMM infastructure.

The supported VMs are :
- VMX
- VQFX
- PC with ubuntu OS (16.04)
- PC with centos OS (7.X)

## Requirement
This script requires the following :
- Python3 (this script requires Python3)
- passlib library (to install use `pip3 install passlib`)
- paramiko library (to install use `pip3 install paramiko`)
- yaml library

## VM images 
Before the script is used, the VM images must be available on the VMM.

please upload the VM images into directory /vmm/data/user_disks/<your_user_name>
