#!/bin/sh
# docker-entrypoint.sh
python3 frontend/public/serve.py
java -jar build/front-end.jar
