docker build --tag myvpn-node .
docker images

docker tag myvpn-node:latest nhoxzunbmt/myvpn-node:v1.1
docker images
docker push nhoxzunbmt/myvpn-node:v1.1


