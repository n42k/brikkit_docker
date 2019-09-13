docker run --net=host -v %cd%\brikkit.conf:/app/brikkit.conf -v %cd%\plugins:/app/plugins -v %cd%\conf:/app/conf -v %cd%\saved:/app/saved -v %cd%\logs:/app/logs -v %cd%\brickadia:/app/brickadia brikkit /bin/bash /app/forever.sh
pause
