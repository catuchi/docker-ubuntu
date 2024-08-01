# Use an official Apache runtime as a parent image
FROM httpd:2.4

# Set the working directory in the container
WORKDIR /usr/local/apache2/htdocs/

# Copy the website files into the container
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 80

# The base image httpd:2.4 already has an ENTRYPOINT set to start Apache, so no CMD is needed
