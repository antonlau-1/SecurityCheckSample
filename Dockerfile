FROM node:21.0.0

RUN npm install -g npm@10.7.0

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
