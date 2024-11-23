# Specify the base image (Node.js version 14)
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 3000

# Default command to run the application
CMD ["npm", "start"]
