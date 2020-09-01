# Using Nginx's latest release as base image
FROM nginx:1.19.2-alpine

# Copy the local "public" folder into the Nginx served folder
COPY ./public /usr/share/nginx/html/