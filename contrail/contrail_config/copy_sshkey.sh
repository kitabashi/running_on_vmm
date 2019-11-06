	for i in {0..5}
	do
		ssh-copy-id -i ~/.ssh/id_rsa.pub root@node${i}
	done
