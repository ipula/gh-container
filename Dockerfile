FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.jertz5c.mongodb.net
ENV MONGODB_USERNAME ipularanasinghe007_db_user
ENV MONGODB_PASSWORD qgscf4egYvsJk86Y

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]