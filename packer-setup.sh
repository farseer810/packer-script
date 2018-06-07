#!/bin/sh
# 安装基本工具
#apt-get update
#apt-get install -y git vim tmux build-essential apt-utils wget curl
#apt-get install -y libmysqlclient-dev
#
#
## 配置vim
#if [-f "/etc/vimrc"]; then
#	echo "syntax on\nset nu\nset hlsearch\nset smartindent\nset smarttab\nset expandtab\nset tabstop=4\nset softtabstop=4\nset shiftwidth=4\nset backspace=2\n" >> /etc/vimrc
#else
#	echo "syntax on\nset nu\nset hlsearch\nset smartindent\nset smarttab\nset expandtab\nset tabstop=4\nset softtabstop=4\nset shiftwidth=4\nset backspace=2\n" >> /etc/vim/vimrc
#fi

# 安装docker
apt-get install -y apt-transport-https ca-certificates software-properties-common curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update && apt-get install -y docker-ce

