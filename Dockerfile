#base image
FROM node:alpine

#install dependancies
WORKDIR /usr/helloapp
COPY ./package.json ./
RUN npm install
COPY ./ ./
EXPOSE 80
#start-up command
CMD ["npm", "start"]
