# Stage 1: Build
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install

# Stage 2: Run (Optimized)
FROM node:18-alpine 
# Isse image size bahut chota ho jayega
WORKDIR /app
COPY --from=build /app/node_modules ./node_modules
COPY . .

EXPOSE 3000
CMD ["node", "server.js"]
