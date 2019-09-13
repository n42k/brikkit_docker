#!/bin/bash

docker run -i --net=host \
	-v $PWD/brikkit.conf:/app/brikkit.conf \
	-v $PWD/plugins:/app/plugins \
	-v $PWD/conf:/app/conf \
	-v $PWD/saved:/app/saved \
	-v $PWD/logs:/app/logs \
	-v $PWD/brickadia:/app/brickadia \
	brikkit /bin/bash /app/forever.sh
read -n1 -r -p "Press any key to continue..." key
