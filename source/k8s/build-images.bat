dotnet publish ../ezStoreMicroservice.sln
docker-compose -f ../docker-compose.init.yml build 
docker-compose -f ../docker-compose.deploy.yml build 

docker tag microservice.services.queue khainx127/microservice.services.queue
docker push khainx127/microservice.services.queue

docker tag microservice.services.redis khainx127/microservice.services.redis
docker push khainx127/microservice.services.redis

docker tag microservice.identity.db khainx127/microservice.identity.db
docker push khainx127/microservice.identity.db

docker tag microservice.services.db khainx127/microservice.services.db
docker push khainx127/microservice.services.db

docker tag microservice.notification.background khainx127/microservice.notification.background
docker push khainx127/microservice.notification.background

docker tag ezstore.product.api khainx127/ezstore.product.api
docker push khainx127/ezstore.product.api

docker tag microservice.logging.background khainx127/microservice.logging.background
docker push khainx127/microservice.logging.background

docker tag microservice.identity.server khainx127/microservice.identity.server
docker push khainx127/microservice.identity.server

docker tag microservice.logging.api khainx127/microservice.logging.api
docker push khainx127/microservice.logging.api
