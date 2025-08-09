FROM node
WORKDIR /app
COPY package.json .
RUN npm init -y
COPY . .
CMD ["node","node.js"]