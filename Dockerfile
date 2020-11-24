FROM node:12

# To Create nodejsapp directory
WORKDIR /nodejsapp

# To Install All dependencies

COPY package*.json ./
RUN npm config set proxy http://10.116.16.12:3128
RUN npm install

# To copy all application packages 
COPY . .

# Expose port 3000 and Run the server.js file to start node js application
EXPOSE 3000
CMD [ "node", "server.js" ]