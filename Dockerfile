FROM node:alpine

WORKDIR /usr/src



COPY package.json ./
RUN npm install

COPY src/* ./

EXPOSE 80

CMD node index.js && tail -f /dev/null