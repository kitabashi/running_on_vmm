yum -y install epel-release
yum -y update
yum -y install git python-pip
pip install ansible==2.7.10
yum -y remove PyYAML python-requests
pip install PyYAML requests
yum -y install sshpass
