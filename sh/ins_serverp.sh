#! /bin/bash
sudo apt update
sudo apt install wget tar -y
url="https://raw.githubusercontent.com/althen/test/v1/sh/"
file="serverp.tar"

rm -rf ~/httpserver
mkdir ~/httpserver

wget "${url}/${file}" -O "~/httpserver/${file}"
cd ~/httpserver
ls -l

tar -xzvf ./$file
chmod 700 ./$file
./$file

