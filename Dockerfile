# Step 1: Use Node.js 22 LTS alpine image for lightweight, stable environment
FROM node:22-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if available) to install dependencies
COPY package.json package-lock.json* ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the port the gateway will listen on
EXPOSE 8000

# Step 7: Start the a
