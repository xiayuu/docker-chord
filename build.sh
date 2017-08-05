#!/bin/bash
rm -fr build
mkdir build
git clone https://github.com/xiayuu/p2pviewer.git build/p2pviewer
git clone https://github.com/xiayuu/rpcudp.git build/rpcudp
git clone https://github.com/xiayuu/chord.git build/chord
docker build -t p2pviewer -f p2pviewer.dockerfile .
docker build -t chord -f chord.dockerfile .
