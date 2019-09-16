SET cd=/c/Users/n42k/Downloads/brikkit_docker-master
docker run -it --entrypoint /bin/bash -p 7777:7777/udp -v %cd%/brikkit.conf:/app/brikkit.conf -v %cd%/plugins:/app/plugins -v %cd%/conf:/app/conf -v %cd%/saved:/app/saved --mount type=bind,source=%cd%/logs,destination=/app/logs -v %cd%/brickadia:/app/brickadia brikkit
pause