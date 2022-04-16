FROM node:current-alpine
WORKDIR /var/www/node/api
COPY ./api ./
RUN npm install -g yarn forever --force && \
  yarn install --production --force
USER node
EXPOSE 80
CMD ["forever", "app.js"]