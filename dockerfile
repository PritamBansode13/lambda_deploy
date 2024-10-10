# Use the official AWS Lambda Node.js 14 runtime as a base image
FROM public.ecr.aws/lambda/nodejs:14

# Set the working directory
WORKDIR /var/task

# Copy package.json and package-lock.json files for dependency installation
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the Lambda handler
CMD ["server.handler"]
