# Use the official Nginx image
FROM nginx:alpine

# Remove default nginx website content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site to Nginx's html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
