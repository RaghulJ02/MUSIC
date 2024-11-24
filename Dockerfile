# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the local project files into the container
COPY . .

# Expose port 80 to allow traffic to the container
EXPOSE 80

# The default command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
