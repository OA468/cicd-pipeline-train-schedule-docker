FROM node:carbon          # Use the node:carbon image. The image is a long term support release. 
                          # It is maintained by the node.js team. It is set up to run node.js apps

WORKDIR /usr/src/app      # Specify the working directories for the commands that will follow. 
                          # The location is where the app will be installed & the source code will be uploaded to.

COPY package*.json ./     # Use the command to copy "package*.json ./". The files are necessary for the running of json files. 
                          # You copy them to ./ cos that is the working directory.

RUN npm install           # Use the npm install command to download all the dependencies that are defined in the package.json files. 
                          # npm install is necessary for the app to run.

COPY . .                  # The 1st dot represents the directory you are in (on the machine used to build the Docker image. 
                          # The 2nd dot is the destination inside the Docker image. 
                          # This is the  /usr/src/app working directory that was specified earlier.

EXPOSE 8080               # Indicates port that'll be used to access the web app. 
                          # It "tells" Docker that the s/ware inside the container - the Node.js app is listening on port 8080.
  
CMD   ["npm", "start"]    # This is the command  that will be used to run the s/ware inside the container. 
                          # This command will run the app on any machine that has Node.js installed 
