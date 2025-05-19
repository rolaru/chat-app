eval $(minikube docker-env)
docker stop $(docker ps | grep -E "(chat-app|redis|nginx)" | awk '{print $1}')
docker rm $(docker ps | grep -E "(chat-app|redis|nginx)" | awk '{print $1}')
docker rmi $(docker images | grep -E "chat-app|redis|nginx" | awk '{print $3}')