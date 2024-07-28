# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy HTML files and images
COPY nginx-html /usr/share/nginx/html

