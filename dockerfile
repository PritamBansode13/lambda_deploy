# Use the official AWS Lambda Node.js 14 runtime as a base image
FROM public.ecr.aws/lambda/nodejs:14

# Copy the application code into the container
COPY . .

# Install dependencies
RUN npm install

# Set the command to run the Lambda function handler
CMD ["lambda_function.lambda_handler"]
