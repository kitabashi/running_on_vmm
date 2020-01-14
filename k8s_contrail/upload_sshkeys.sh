#!/bin/bash
for i in vmmgw node0 node1 node2 node3 node4 deployer cc
do
	ssh-copy-id -i ~/.ssh/id_rsa.pub ${i}
done
