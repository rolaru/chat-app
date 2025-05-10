eval $(minikube docker-env)
docker stop $(docker ps -a -q)