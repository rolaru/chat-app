# Build stage for React client
FROM node:20-alpine AS client-build
WORKDIR /app
# COPY ./client/package*.json ./
COPY ./client/ ./
RUN npm ci
RUN npm run build

FROM nginx:1.27.5-alpine
# Copy built React assets from build stage
COPY --from=client-build /app/build /usr/share/nginx/html
# Copy nginx configuration file
COPY ./nginx-api-gateway/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]