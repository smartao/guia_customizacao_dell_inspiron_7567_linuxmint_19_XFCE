# guia_customizacao_dell_inspiron_7567_linuxmint_19_XFCE
Um guia que contem o passo a passo de como instalar o Linux Mint 19 no Dell Inspirion 7567

# Instalando configurando SSH e instalando Ansible
sudo ./s02*

# Instalar programas com o Ansible
sudo ansible-playbook s03-instalando-programas-p1.yml -i configuracoes/inventory

# Instalando programas que nao funciona com ansible
sudo ./s04*

