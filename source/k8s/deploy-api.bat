dotnet publish ezStoreMicroservice.sln
docker-compose -f docker-compose.deploy.yml up -d --build 

kubectl delete service microservice-identity-server
kubectl delete deployment microservice-identity-server

kubectl create -f .\k8s.service.api.yaml

kubectl get all