# Use an Nginx base image
FROM nginx:alpine

# Remove default HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy our static files to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 34

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
