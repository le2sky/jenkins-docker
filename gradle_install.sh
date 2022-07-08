#!/bin/sh


# apt-get update
sudo apt-get update
sudo apt-get -y upgradle
sudo apt-get install build-essential
sudo apt-get install curl

# gradle installation
sudo apt-get install gradle-7.4.2

# check installation
gradle -v
