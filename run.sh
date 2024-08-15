#!/bin/bash
docker-compose down -v

while [ "$(docker ps -q)" ]; do
    echo "Waiting for containers to stop..."
    sleep 5
done

echo "All containers have stopped."

docker-compose up -d --build
