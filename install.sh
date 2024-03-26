apt update
apt install -y gpg wget
mkdir -p /etc/apt/keyrings
gpg --homedir /tmp --no-default-keyring --keyring /etc/apt/keyrings/scylladb.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys d0a112e067426ab2
wget -O /etc/apt/sources.list.d/scylla.list http://downloads.scylladb.com/deb/debian/scylla-5.4.list
apt-get update
apt-get install -y scylla
scylla_io_setup
systemctl enable scyla-server
systemctl start scyla-server
