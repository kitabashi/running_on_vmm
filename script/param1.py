#!/usr/bin/env python3
home_dir='/vmm/data/user_disks/'
pc_type=['pcsmall','pcmedium','pcbig']
vm_type={
   'gw': {'ncpus' : 1,'memory':2048},
   'pcsmall': {'ncpus' : 1,'memory':4096},
   'pcmedium': {'ncpus' : 2,'memory':16384},
   'pcbig': {'ncpus' : 4,'memory':32768},
   'junos': ''
}
vm_os=['centos','ubuntu','vmx','vqfx','vsrx']
tmp_dir="./tmp/"
vmm_group="-g vmm-default"

