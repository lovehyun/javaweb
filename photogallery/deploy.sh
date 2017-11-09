#!/bin/bash
sudo service photoapp stop
sleep 5;
echo `pwd`
APP=photogallery.war
TARGETDIR=/home/ec2-user/
cp -f photogallery/target/$APP $TARGETDIR$APP
chmod 755 $TARGETDIR$APP
sudo rm -rf /etc/init.d/photoapp
sudo ln -s $TARGETDIR$APP /etc/init.d/photoapp
sudo service photoapp start
