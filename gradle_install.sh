#!/bin/sh


# apt-get update
sudo apt-get update
sudo apt-get -y upgradle
sudo apt-get install unzip
sudo apt-get install curl

# jdk install
sudo apt-get install openjdk-11-jdk

# gradle version setting
VERSION=7.3.1



# gradle installation
wget https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-${VERSION}-bin.zip
sudo ln -s /opt/gradle/gradle-${VERSION} /opt/gradle/latest


# sudo vi /etc/profile.d/gradle.sh

## input fllowing command into gradle.sh
# export GRADLE_HOME=/opt/gradle/latest
# export PATH=${GRADLE_HOME}/bin:${PATH}

## add execuatable permission
# sudo chmod +x /etc/profile.d/gradle.sh

##  script loading
# source /etc/profile.d/gradle.sh

# check installation
gradle -v

