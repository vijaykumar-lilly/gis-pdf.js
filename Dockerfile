FROM node:20.17.0-alpine3.20

RUN apk add g++ make py3-pip

EXPOSE 80

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN npm install

CMD ["npx", "gulp", "server"]

