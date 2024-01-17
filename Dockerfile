# Use official Node.js 14 as base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the client code
COPY . .

# Expose port 3000 for the client
EXPOSE 3000

# Start the server
CMD [ "npm", "start" ]
