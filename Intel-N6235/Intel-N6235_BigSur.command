#!/bin/bash 
BASEDIR=$(dirname "$0")
echo "$BASEDIR"

mkdir ~/livemount
sudo mount -o nobrowse -t apfs /dev/disk2s1 ~/livemount

sudo cp -Rf $BASEDIR/CSRBluetoothHostControllerUSBTransport.kext ~/livemount/System/Library/Extensions/IOBluetoothFamily.kext/Contents/PlugIns

sudo chown -Rf root:wheel ~/livemount/System/Library/Extensions/IOBluetoothFamily.kext/Contents/PlugIns/CSRBluetoothHostControllerUSBTransport.kext
sudo chmod -Rf 755 ~/livemount/System/Library/Extensions/IOBluetoothFamily.kext/Contents/PlugIns/CSRBluetoothHostControllerUSBTransport.kext

sudo bless --folder ~/livemount/System/Library/CoreServices --bootefi --create-snapshot

#sudo kmutil clear-staging
sudo kextcache -i ~/livemount
sudo kcditto
