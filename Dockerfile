# Use an official Nginx image as the base
FROM nginx:latest

# Copy the static website files to the Nginx html directory
COPY . /usr/share/nginx/html
