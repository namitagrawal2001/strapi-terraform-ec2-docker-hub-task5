# 1. Use Node.js 20 (Official Image)
FROM node:20-alpine

# 2. Set working directory inside the container
WORKDIR /opt/app

# 3. Copy package files first (to cache dependencies)
COPY package.json package-lock.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the project files
COPY . .

# 6. Build the Admin Panel
RUN npm run build

# 7. Expose the Strapi port
EXPOSE 1337

# 8. Start the application
CMD ["npm", "run", "develop"]