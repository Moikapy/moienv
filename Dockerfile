FROM node:lts

# Create app directory
WORKDIR /usr/src/app
RUN npm i -g npm yarn nodemon moiboi-cli express
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN yarn
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
