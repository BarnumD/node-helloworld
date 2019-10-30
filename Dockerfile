FROM node:13

COPY package*.json ./
RUN npm install

WORKDIR /app
COPY . .

EXPOSE 80
CMD [ "node", "server.js" ]