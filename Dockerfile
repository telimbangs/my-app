# pulling the official base image from node.js
FROM node:13.12.0-alpine

#setting a work directory
WORKDIR /my-app

# adding node modules(/my-app/node_modules/.bin) to PATH
ENV PATH /my-app/node_modules/.bin:$PATH

#installing app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent

#adding the app
COPY . ./

#starting the app
CMD ["npm", "start"]
