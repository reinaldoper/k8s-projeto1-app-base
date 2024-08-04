echo "Criando as imagens"

docker build -t rei200201/projeto-backend:1.0 backend .
docker build - t rei200201/projeto-database:1.0 database .

echo "Realizando push das imagens"

docker push rei200201/projeto-backend:1.0
docker push rei200201/projeto-database:1.0

