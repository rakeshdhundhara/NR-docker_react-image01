FROM node:18-alpine

WORKDIR /react-docker

COPY public/ /react-docker/public
COPY src/ /react-docker/src
COPY package.json /react-docker/

RUN npm install

COPY . /react-docker/


CMD ["npm", "start"]
