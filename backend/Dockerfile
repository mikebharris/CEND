FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install --assume-yes xz-utils
RUN apt-get install --assume-yes wget
RUN apt-get install --assume-yes open-cobol
RUN wget https://nodejs.org/dist/v6.11.2/node-v6.11.2-linux-x64.tar.xz
RUN xz -d node-v6.11.2-linux-x64.tar.xz
RUN tar xf node-v6.11.2-linux-x64.tar
RUN apt-get remove --assume-yes --purge xz-utils wget
WORKDIR node-v6.11.2-linux-x64
RUN cp -dpR . /usr
WORKDIR ...
RUN rm -rf node-v6.11.2-linux-x64
WORKDIR /usr/src/ebams
COPY package.json .
RUN npm install
COPY server.js .
COPY ebams.cbl .
CMD [ "npm", "start" ]
