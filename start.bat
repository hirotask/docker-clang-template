@echo off
docker-compose up --build -d
docker-compose exec myclang gcc main.c -o main
echo;
echo --- Result is Here ---
docker-compose exec myclang /bin/bash -c "./main"
