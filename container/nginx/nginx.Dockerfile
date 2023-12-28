# Use the official Nginx image as the base image
FROM nginx:1.20.1

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration
COPY ./container/nginx/default.conf /etc/nginx/conf.d/

# Copy your web content
COPY ./ /var/www/html/devops/

# Expose port 80 for incoming HTTP traffic
EXPOSE 80
