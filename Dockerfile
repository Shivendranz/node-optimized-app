# Stage 1: Build
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install

# Stage 2: Run (IS LINE KO DHYAAN SE BADLIYE)
FROM node:18-alpine 
WORKDIR /app
COPY --from=build /app/node_modules ./node_modules
COPY . .

EXPOSE 3000
CMD ["node", "server.js"]
