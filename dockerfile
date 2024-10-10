# Use the official AWS Lambda Node.js image
FROM public.ecr.aws/lambda/nodejs:14

# Set the working directory
WORKDIR /var/task

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Command to run the Lambda function
CMD [ "server.handler" ]  # Adjust "handler" if needed
