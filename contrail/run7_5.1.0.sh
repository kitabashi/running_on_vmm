docker run -td --net host -v $PWD/command_servers.yml.minimal:/command_servers.yml --privileged --name contrail_command_deployer hub.juniper.net/contrail/contrail-command-deployer:5.1.0-0.38
