FROM public.ecr.aws/lambda/nodejs:14

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy your application files
COPY . .

# Command to run the Lambda function
CMD ["server.handler"]  // Change this according to your server.js structure
