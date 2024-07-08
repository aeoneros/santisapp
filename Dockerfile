# Use an official Nginx image as the base
FROM nginx:latest

# Create a temporary directory for the website files
RUN mkdir -p /tmp/html

# Copy the static website files to the temporary directory in the Nginx container
COPY . /tmp/html

# Copy the entrypoint script
COPY santisapp-entrypoint.sh /santisapp-entrypoint.sh
RUN chmod +x /santisapp-entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/santisapp-entrypoint.sh"]
