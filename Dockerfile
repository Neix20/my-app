FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package.json ./

RUN yarn install
# If you are building your code for production

# Bundle app source
COPY . .

# Expose Port
EXPOSE 5173

CMD [ "npm", "run", "dev" ]
