FROM node:20.17.0-alpine3.20
RUN addgroup app && adduser -S -G app app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN chown -R app:app /app
USER app
EXPOSE 3000
CMD ["npm", "start"]