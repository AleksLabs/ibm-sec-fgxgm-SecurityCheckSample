FROM node:20.12.2-slim
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g=1:1.2.13.dfsg-2
RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
