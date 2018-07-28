#!/bin/bash
# Definir a senha de root
sudo passwd root

# Instalando o ansible para automatizar demais processos
apt install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt update
apt install ansible sshpass python vim openssh-server -y

# Ativando o SSH
sed -i 's/#Port 22/Port 22/g' /etc/ssh/sshd_config
sed -i 's/#AddressFamily any/AddressFamily any/g' /etc/ssh/sshd_config
sed -i 's/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/g' /etc/ssh/sshd_config
sed -i 's/#SyslogFacility AUTH/SyslogFacility AUTH/g' /etc/ssh/sshd_config
sed -i 's/#LogLevel INFO/LogLevel INFO/g' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/#MaxAuthTries 6/MaxAuthTries 6/g' /etc/ssh/sshd_config
systemctl restart sshd

# Criar chave ssh e configura para acesso
cat /dev/zero | ssh-keygen -q -N ""
cat /root/.ssh/id_rsa.pub > /root/.ssh/authorized_keys
