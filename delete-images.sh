eval $(minikube docker-env)
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q)