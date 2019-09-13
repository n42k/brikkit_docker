docker run -i -p 7777:7777/udp -v %cd%\brikkit.conf:/app/brikkit.conf -v %cd%\plugins:/app/plugins -v %cd%\conf:/app/conf -v %cd%\saved:/app/saved -v %cd%\logs:/app/logs -v %cd%\brickadia:/app/brickadia brikkit /bin/bash /app/forever.sh
pause
