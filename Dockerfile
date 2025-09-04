FROM node
WORKDIR /app
COPY package.json .
RUN npm init 
COPY . .
CMD ["node","node.js"]
EXPOSE "3000"