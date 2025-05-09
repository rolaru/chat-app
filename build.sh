docker build -t chat-app-redis-server:1.0 ./redis/
docker build -t chat-app-db:1.0 ./db/
docker build -t chat-app-web-server:1.0 ./web-server/
docker build -t chat-app-web-sockets-server:1.0 ./chat-web-sockets-server/
docker build -t nginx-api-gateway:1.0 -f ./nginx-api-gateway/Dockerfile .