FROM node:12


RUN mkdir -p /usr/src/myvpn-node && chown -R node:node /usr/src/myvpn-node

WORKDIR /usr/src/myvpn-node

COPY package.json yarn.lock ./

USER node

RUN yarn install --pure-lockfile

COPY --chown=node:node . .

CMD [ "node", "index.js" ]


EXPOSE 3000