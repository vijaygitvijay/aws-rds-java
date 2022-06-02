FROM node:17.3.0-alpine3.14
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]
