FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME Cluster0
ENV MONGODB_CLUSTER_ADDRESS cluster0.sxpb06w.mongodb.net
ENV MONGODB_USERNAME dbuset
ENV MONGODB_PASSWORD 73rhws2t

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
