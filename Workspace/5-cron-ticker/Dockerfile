FROM node:19.2-alpine3.16

WORKDIR /app

COPY package.json ./

RUN npm install

COPY app.js ./

RUN npm run test

CMD ["node", "app.js"]
