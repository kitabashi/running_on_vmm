	for i in {0..5}
	do
		scp /etc/hosts root@node${i}:/etc/hosts
	done 
