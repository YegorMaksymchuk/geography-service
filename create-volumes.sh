#!/usr/bin/env bash

mkdir 01_DB/data

docker network create geo-net

cd 01_DB
docker build -t geo-db .
docker run -d -it -p 27017:27017 --volume $PWD/data:/data/db --name=geography-db --network geo-net geo-db

docker start geography-db

cd ../02_Server/
docker build -f Dockerfile.single -t geo-srv .
docker run -d -it -p 4000:4000  --volume $PWD:/usr/src/app --name=geography-server --network geo-net geo-srv
docker start geography-server

sleep 5s

curl -X GET http://localhost:4000/api/questions?number=2 | jq