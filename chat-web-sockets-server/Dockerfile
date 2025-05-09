FROM node:23-alpine3.20

COPY index.ts /app/
COPY package.json /app/
COPY package-lock.json /app/

WORKDIR /app

RUN npm i -g pm2
RUN npm i

CMD ["npm", "start"]
# CMD ["pm2", "start", "npm", "--name", "chat-app-web-sockets-server", "--", "start"]