FROM node:18.15.0-alpine
WORKDIR /usr/src/app
 
# Copy dependency definitions
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json
 
# Install dependencies
#    && npm i install and curl for healthcheck
RUN npm i
RUN apk --no-cache add curl
 
# Get all the code needed to run the app
COPY . .
 
# Expose the port the app runs in
EXPOSE 8000

#run tests
RUN npm test

HEALTHCHECK CMD curl --fail http://localhost:8000/api/users || exit 1  
 
# Serve the app
CMD ["npm", "start"]