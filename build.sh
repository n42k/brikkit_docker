#!/bin/bash

mkdir -p brickadia
mkdir -p plugins
mkdir -p conf
mkdir -p saved

docker build --tag=brikkit .
