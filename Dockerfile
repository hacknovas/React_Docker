FROM node:slim

WORKDIR /app
RUN mkdir project

WORKDIR /app/project
COPY package.json .
RUN npm install

WORKDIR /app/project
COPY . .

CMD npm start
