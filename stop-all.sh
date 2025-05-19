eval $(minikube docker-env)
docker stop $(docker ps | grep -E "(chat-app|redis|nginx)" | awk '{print $1}')