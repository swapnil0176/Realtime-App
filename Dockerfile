# Use Nginx official image
FROM nginx:alpine

# Copy HTML files to Nginx's default directory
COPY index.html /usr/share/nginx/html/index.html

