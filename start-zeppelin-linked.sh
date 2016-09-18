#!/usr/bin/env bash
docker pull cortwave/docker-zeppelin:0.6.1
docker run -i -t -p 8080:8080 -p 8081:8081 --link spark_master:spark_master cortwave/docker-zeppelin:0.6.1 /start-script.sh
