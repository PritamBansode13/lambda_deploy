# Use the official Node.js image as the base image
FROM public.ecr.aws/lambda/nodejs:14

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Command to run the Lambda function
CMD [ "server.handler" ]  # Replace "handler" with the name of your exported handler function
