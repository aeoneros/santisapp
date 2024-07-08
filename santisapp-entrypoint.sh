#!/bin/bash
set -e

# Copy the contents from /tmp/html to /usr/share/nginx/html (mounted GlusterFS volume)
cp -r /tmp/html/* /usr/share/nginx/html

# Execute the original Nginx entrypoint
exec nginx -g 'daemon off;'
