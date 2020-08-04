FROM registry.access.redhat.com/ubi8/nodejs-12:1-36 AS builder

RUN mkdir /app
WORKDIR /app

COPY package.json /app

RUN npm install

COPY server.js /app/server.js

ENV HOST=0.0.0.0 PORT=4000

EXPOSE 4000

CMD ["npm","start"] 
