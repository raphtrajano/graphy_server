FROM node:18.20.1-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
RUN apt-get install -y zlib
EXPOSE  4000
CMD node graphserver.js
