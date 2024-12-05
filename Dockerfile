FROM node:15
WORKDIR /app
# COPY package.json /app   is same as COPY package.json .
# it means copy package.json into /app
COPY package.json /app
RUN npm install
COPY .  /app
EXPOSE 4001
CMD ["node", "index.js"]