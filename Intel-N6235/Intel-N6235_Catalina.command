#!/bin/bash 
BASEDIR=$(dirname "$0")
echo "$BASEDIR"

sudo cp -Rf $BASEDIR/CSRBluetoothHostControllerUSBTransport.kext /System/Library/Extensions/IOBluetoothFamily.kext/Contents/PlugIns

sudo chown -Rf root:wheel /System/Library/Extensions/IOBluetoothFamily.kext/Contents/PlugIns/CSRBluetoothHostControllerUSBTransport.kext
sudo chmod -Rf 755 /System/Library/Extensions/IOBluetoothFamily.kext/Contents/PlugIns/CSRBluetoothHostControllerUSBTransport.kext

sudo kextcache -i /
sudo kcditto
