FROM registry.access.redhat.com/ubi8/nodejs-12:1-36


WORKDIR /opt/app-root/src

COPY  package*.json ./

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm","start"] 
