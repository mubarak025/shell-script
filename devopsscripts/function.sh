#!/bin/bash



echo " $1 is the main argument passsowrd to script"

haldi(){
	echo "haldi lagao"
	echo "pani dalo"

}
haldi

install_package() {

echo " $1 is the local argument passed to function"

sudo apt-get install $1
}

install_package docker.io



