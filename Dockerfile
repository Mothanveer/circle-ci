FROM nginx:latest

# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom nginx.conf into the container
COPY nginx.conf /etc/nginx/conf.d

# Expose port 80 and 443
EXPOSE 80 443

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]
