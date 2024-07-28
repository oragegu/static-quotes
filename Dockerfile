# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy HTML files and images
COPY nginx-html /usr/share/nginx/html

# Set proper permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
