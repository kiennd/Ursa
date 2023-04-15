#!/bin/bash

	echo -e '\n\e[42mPreparing to update & install rust\e[0m\n' && sleep 1
	cd $HOME
	sudo apt update
	sudo curl https://sh.rustup.rs -sSf | sh -s -- -y
	. $HOME/.cargo/env
	curl https://deb.nodesource.com/setup_16.x | sudo bash
	sudo apt install curl make libssl-dev build-essential git jq nodejs -y < "/dev/null"
	sudo apt install npm
	cargo install sccache
        sudo apt-get install build-essential
        sudo apt-get install cmake clang pkg-config libssl-dev
        sudo apt-get install protobuf-compiler
  
  
  echo -e '\n\e[42mPreparing to install Ursa\e[0m\n' && sleep 1
  mkdir -p $HOME/fleek/
  cd $HOME/fleek/
  git clone https://github.com/fleek-network/ursa.git
  cd ursa/
  make install
  
  
  echo -e '\n\e[42mCreating a service\e[0m\n' && sleep 1
sudo tee /etc/systemd/system/ursa.service > /dev/null << EOF
[Unit]
Description=Ursa Node
After=network-online.target
[Service]
User=$USER
ExecStart=$(which ursa)
Restart=on-failure
RestartSec=10
LimitNOFILE=10000
[Install]
WantedBy=multi-user.target
EOF


sudo systemctl daemon-reload

sudo systemctl enable ursa

sudo systemctl restart ursa

sudo journalctl -u ursa -f --no-hostname -o cat
