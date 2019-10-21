# Create Centos Image
The following steps is used to create VMM image from Centos Cloud Image.
Few notes regarding Centos Cloud image :
- By default it doesn't have any password. During the first boot, cloud-init will try to retrieve the configuration (which may include password and ssh-key). In the openstack environment, cloud-init is provided by openstack infrastructure.
- If cloud-init failed to retrieve the configuration, the VM will boot with random password.
- Configuration to the cloud-init, can also be provided through CDROM image attached to the VM during the first boot. Inside the CDROM image must have the configuration files required by cloud init, including password. 
- To simplify, I have created the seed [CDROM image](seed.img), where the password for default user (userid : centos) is set to `mysecret`

1. Download Centos cloud Image from [centos image](https://cloud.centos.org/centos/7/images/)
[download](download_image.png)
2. Download the [seed cdrom image](seed.img), and put it on the same directory as the previous image. 
3. Create VMM configuration file, with the following content :

[irzan@q-pod13-vmm make_image]$ cat centosmake.conf
#include "/vmm/bin/common.defs"

#define INSTALL_DISK bootdisk_rw "/vmm/data/user_disks/irzan/make_image/centos80g.img";

#define CDROM_BOOT cdrom_boot "/vmm/data/user_disks/irzan/make_image/seed.img";

config "make1" {

  vm "centos1" {
    hostname "centos1";
    INSTALL_DISK
    CDROM_BOOT
    ncpus 2;
    memory 4096;
    setvar "+qemu_args" "-cpu qemu64,+vmx";
    interface "em0" { bridge "private1"; };
  };

PRIVATE_BRIDGES
};

[irzan@q-pod13-vmm make_image]$



