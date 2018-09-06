dotnet publish ezStoreMicroservice.sln
docker-compose -f docker-compose.init.yml up -d --build
docker-compose -f docker-compose.deploy.yml up -d --build 