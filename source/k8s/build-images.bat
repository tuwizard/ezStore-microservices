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

docker tag microservice.notification.background:0.03092018 khainx127/microservice.notification.background:0.03092018
docker push khainx127/microservice.notification.background:0.03092018

docker tag ezstore.product.api:0.03092018 khainx127/ezstore.product.api:0.03092018
docker push khainx127/ezstore.product.api:0.03092018

docker tag microservice.logging.background:0.03092018 khainx127/microservice.logging.background:0.03092018
docker push khainx127/microservice.logging.background:0.03092018

docker tag microservice.identity.server:0.03092018 khainx127/microservice.identity.server:0.03092018
docker push khainx127/microservice.identity.server:0.03092018

docker tag microservice.logging.api:0.03092018 khainx127/microservice.logging.api:0.03092018
docker push khainx127/microservice.logging.api:0.03092018
