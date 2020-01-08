openstack image create --public --disk-format qcow2 --container-format bare --file cirros-0.4.0-x86_64-disk.img cirros
openstack project create demo1
openstack project create demo2
openstack project create demo3
openstack role add --project demo1 --user admin admin
openstack role add --project demo2 --user admin admin
openstack role add --project demo3 --user admin admin
openstack flavor create --public --vcpu 1 --ram 128 --disk 1 m1.tiny
openstack flavor create --public --vcpu 1 --ram 2048 --disk 10 m1.small
openstack flavor create --public --vcpu 2 --ram 4096 --disk 40 m1.medium
