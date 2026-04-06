# Stage 1: Build (Sab kuch install karne ke liye)
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install

# Stage 2: Production (Sirf zaroori files ke liye - Super Small Image)
FROM node:18-alpine 
WORKDIR /app
# Pichle stage se sirf node_modules aur code uthao
COPY --from=build /app/node_modules ./node_modules
COPY . .

EXPOSE 3000
CMD ["node", "server.js"]
