docker-compose stop

docker rm mysqldb 
docker rm setup-vault 
docker rm config-server 
docker rm service-registry 
docker rm config-server
docker rm hystrix-dashboard
docker rm vault
docker rm rabbitmq

docker ps -a
