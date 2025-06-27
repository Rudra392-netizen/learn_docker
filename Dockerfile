#First create the base image in which all the required libraries and dependencies are installed
FROM node:21-alpine
#Now create the workig directory
WORKDIR /app
#Copy the package.json and package-lock.json files to the working directory
COPY package*json ./
#Install the dependencies
RUN npm install 
#Now copy the rest of the application to the working directory
COPY . .
#Expose the port number in which the application will run
EXPOSE 3000
#start the application
CMD ["npm","start"]