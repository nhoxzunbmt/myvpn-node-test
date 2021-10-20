docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx inspect --bootstrap

#Build


#docker build --tag myvpn-node .
#docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t myvpn-node:latest --push .
docker buildx build --platform linux/arm64/v8 -t myvpn-node:latest  --push .
docker images

#Set tag
docker tag myvpn-node:latest nhoxzunbmt/myvpn-node:v1.2
docker images
docker push nhoxzunbmt/myvpn-node:v1.2

#Delete
docker rmi myvpn-node:v1.0.0
docker images

#Run 
docker run -d -p 9000:3000 nhoxzunbmt/myvpn-node:v1.1


docker run -d -p 9000:3000 nhoxzunbmt/myvpn-node:latest


#In PI 

docker build --tag myvpn-node .
docker tag myvpn-node:latest nhoxzunbmt/myvpn-node:latest
docker push nhoxzunbmt/myvpn-node:latest
docker push nhoxzunbmt/myvpn-node:latest