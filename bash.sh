#!/bin/bash
docker run -it --entrypoint /bin/bash -v $PWD/brikkit.conf:/app/brikkit.conf -v $PWD/plugins:/app/plugins -v $PWD/conf:/app/conf -v $PWD/saved:/app/saved brikkit
