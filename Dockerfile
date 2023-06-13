FROM node:16-alpine

WORKDIR /docker_ex

COPY package.json package-lock.json ./

RUN npm ci

COPY index.js .

ENTRYPOINT [ "node", "index.js" ]