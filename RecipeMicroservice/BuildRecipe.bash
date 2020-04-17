mvn -f ./recipe-microservice package
docker build -t pizza-shop-recipe-api ./recipe-microservice
docker run -d --name pizza-recipe-api -p 9096:9096 pizza-shop-recipe-api
docker network connect pizza-shop pizza-recipe-api