#!/bin/bash
#

echo "installing $1"

sudo apt-get update && sudo apt install $1 -y

echo "successfully instalaled $1"


