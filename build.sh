docker build --tag myvpn-node .
docker tag myvpn-node:latest loiincloud/myvpn-node:latest
docker push loiincloud/myvpn-node:latest