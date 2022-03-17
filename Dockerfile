FROM node

WORKDIR /app

COPY package-lock.json .
COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000
EXPOSE 22

CMD ["node", "app.js"]