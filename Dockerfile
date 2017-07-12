FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Update npm
RUN npm install -g npm

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --quiet

CMD ["node", "app.js"]

# Expose the port.
EXPOSE 8080

# Expose external app directory
VOLUME /usr/src/app
VOLUME /usr/src/app/node_modules