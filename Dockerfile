# Use NodeJS on Debian as base image 
FROM node:hydrogen-buster-slim

# Change the work dir 
COPY package.json package-lock.json ./

# Install dependencies 
RUN npm install 

# Copy the rest of the app 
COPY . . 

# Export the App port 
EXPOSE 3000

# Start the App on container launch 
CMD ["npm", "start"]
