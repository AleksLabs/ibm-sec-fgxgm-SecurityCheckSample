FROM node:18.17.1
RUN apt-get update && apt-get remove -y zlib1g
RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
