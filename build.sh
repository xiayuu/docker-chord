#!/bin/bash
rm -fr build
mkdir build
git clone https://github.com/xiayuu/p2pviewer.git build/p2pviewer
docker build -t p2pviewer -f p2pviewer.dockerfile .
