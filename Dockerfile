FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  bash \
  apt-get upgrade -y && \
  npm i pm2 -g && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install -g npm@latest

RUN npm install -g yarn@latest

RUN yarn install

COPY . .

CMD ["node", "koyeb.js"]
