FROM registry.access.redhat.com/ubi8/nodejs-12:1-36 AS builder


WORKDIR /opt/app-root/src

COPY . .

RUN npm install

ENV HOST=0.0.0.0 PORT=4000

EXPOSE 4000

CMD ["npm","start"] 
