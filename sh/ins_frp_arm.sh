#! /bin/bash
apt update
apt install wget tar -y
url="https://github.com/fatedier/frp/releases/download/v0.38.0"
file="frp_0.38.0_linux_arm64.tar.gz"
dir="frp_0.38.0_linux_arm64"

rm -rf ~/frp
mkdir ~/frp
wget "${url}/${file}" -O ~/frp/$file
cd ~/frp
ls -l

tar -xzvf ./$file
nohup ./$dir/frps &

