FROM node:boron

# Create app directory
RUN mkdir -p /docker_web_app/usr/src/app
WORKDIR /docker_web_app/src/app

# Install app dependencies
COPY package.json /docker_web_app/usr/src/app/
RUN npm install

# Bundle app source
COPY .  /docker_web_app/usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]