FROM node:16.18.0-alpine
WORKDIR /app
ADD package*.json ./
RUN npm install
ADD app.js ./
CMD [ "node", "app.js"]