FROM node:14                        # Use the Node.js version 14 base image.
WORKDIR /usr/src/app                # Set the working directory inside the container.

COPY package*.json ./               # Copy the package.json and package-lock.json files into the container.
RUN npm install                     # Install the dependencies defined in package.json.

COPY . .                            # Copy all other files from the current directory into the container.
EXPOSE 3000                         # Expose port 3000 to allow external access.
CMD ["node", "App.js"]              # Define the command to run the application.
