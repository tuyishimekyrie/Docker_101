FROM node:lts-alpine3.19
WORKDIR /app
COPY package*.json /app
RUN npm install
COPY . /app
ENV API_URL=https://api.myapp.com/
EXPOSE 5173
CMD ["npm", "run", "dev"]