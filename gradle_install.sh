#!/bin/sh

gradle_version=”4.4-rc-5″

#Your Custom Installation Path

install_target_path=”/opt/gradle”
wget -N https://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
mkdir -p ${install_target_path}
unzip gradle-${gradle_version}-all.zip
mv gradle-${gradle_version} ${install_target_path}/
ln -sfn gradle-${gradle_version} ${install_target_path}/latest
chown -R ec2-user:ec2-user ${install_target_path}
printf “export GRADLE_HOME=${install_target_path}/latest\nexport PATH=\$PATH:\$GRADLE_HOME/bin” > /etc/profile.d/gradle.sh
. /etc/profile.d/gradle.sh
# check installation
gradle -v