#specifying node 14 base image
FROM node:14.21.1-alpine3.16

#setting workdir
WORKDIR /app

#copying all file into workdir
COPY . /app

#setting environment
ENV NODE_ENV=production DB_HOST=item-db

#running command for installing dependencies and build
RUN npm install --production --unsafe-perm && npm run build

#exposing outbound port
EXPOSE 8080

#command that is run after docker run
CMD ["npm", "start"]
