FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 4200

CMD ["sh", "-c", "npx ng serve --host 0.0.0.0 --port 4200 --disable-host-check"]
