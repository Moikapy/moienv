FROM node:lts

# Create app directory
WORKDIR moienv
RUN npm i -g npm yarn nodemon moiboi-cli @vue/cli expo-cli

# Install app dependencies
# where available (npm@5+)
COPY package.json ./
RUN yarn
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
