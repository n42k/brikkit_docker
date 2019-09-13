docker run -it --entrypoint /bin/bash -v %cd%\brikkit.conf:/app/brikkit.conf -v %cd%\plugins:/app/plugins -v %cd%\conf:/app/conf -v %cd%\saved:/app/saved brikkit
pause
