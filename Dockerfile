# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy HTML files and images
COPY nginx-html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
