


FROM node:19-alpine
# Copy package.json, wildcard used so both package.json AND package-lock.json are copied
# slash '/' at the end of app is important, so it created an app directory, otherwise you'll get an error

COPY package.json /app/

# Copy app files from src directory

COPY server.js /app/
# Create app directory & set default dir so that next commands executes in /usr/app dir, liked cd-ing into /usr/app to execute npm instal
WORKDIR /app
# Install app dependencies
RUN npm install

EXPOSE 3000

# Set default environment variable
 ENV MESSAGE="Welcome to my awesome app!"
#ARG default_msg= "welcome to my awesome app"
#ENV MESSAGE= ${default_msg}

# Start the application
CMD ["node", "server.js"]




