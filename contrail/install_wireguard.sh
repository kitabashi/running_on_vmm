yum update -y
curl -Lo /etc/yum.repos.d/wireguard.repo https://copr.fedorainfracloud.org/coprs/jdoss/wireguard/repo/epel-7/jdoss-wireguard-epel-7.repo
yum install -y epel-release
yum install -y wireguard-dkms wireguard-tools
yum install -y quagga
