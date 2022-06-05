#!/bin/sh
# docker-entrypoint.sh
cd front-end/public/
python3 serve.py &
cd /app/build
java -jar front-end.jar
