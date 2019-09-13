#!/bin/bash

docker run --net=host -v $PWD/brikkit.conf:/app/brikkit.conf -v $PWD/plugins:/app/plugins -v $PWD/conf:/app/conf -v $PWD/saved:/app/saved -v $PWD/brickadia:/app/brickadia brikkit
read -n1 -r -p "Press any key to continue..." key
