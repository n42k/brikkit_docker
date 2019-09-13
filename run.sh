#!/bin/bash

docker run -v $PWD/brikkit.conf:/app/brikkit.conf -v $PWD/plugins:/app/plugins -v $PWD/conf:/app/conf -v $PWD/saved:/app/saved -v $PWD/brickadia:/app/brickadia brikkit
