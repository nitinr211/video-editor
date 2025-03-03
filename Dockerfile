# Step 1: Use the official Apache HTTPD image as the base image
FROM httpd:alpine

# Step 2: Set the working directory (Apache default document root is /usr/local/apache2/htdocs/)
WORKDIR /usr/local/apache2/htdocs/

# Step 3: Copy your static files (HTML, JS, CSS) into the container's document root
COPY . .

# Step 4: Expose port 80 (default for HTTP)
EXPOSE 80

# Apache will start automatically with the default entrypoint in the image
