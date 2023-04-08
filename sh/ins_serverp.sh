#! /bin/bash
rm -rf ~/httpserver
mkdir ~/httpserver

tar -zvxf srv_cert.tar -C httpserver

#sudo apt update
#sudo apt install wget tar -y
url="https://raw.githubusercontent.com/althen/test/v1/sh"
filebin="serverp"

		case `dpkg --print-architecture` in
		aarch64|arm64)
		filebin="serverp.arm"
		file="serverp.arm.tar" ;;
		amd64)
		file="serverp.tar" ;;
		*)
			echo "unknown architecture"; exit 1 ;;
		esac



#wget "${url}/${file}" -O ~/httpserver/${file}
curl  -o ~/httpserver/${file} "${url}/${file}"

cd ~/httpserver
ls -l

tar -xzvf ./$file
chmod 700 ./$file
./$filebin -port=7791

