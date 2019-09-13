#!/bin/bash

mkdir -p brickadia
mkdir -p plugins
mkdir -p conf
mkdir -p saved

docker build --tag=brikkit .
read -n1 -r -p "Press any key to continue..." key
