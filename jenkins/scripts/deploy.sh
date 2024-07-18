#!/usr/bin/env sh

# Enable script debugging
set -x

# Run a Docker container with Apache and PHP, mapping local directory to the container's web root
docker run -d -p 80:80 --name my-apache-php-app \
  -v C:\\Users\\niksb\\OneDrive\\Documents\\GitHub\\jenkins-php-selenium-test\\jenkins-php-selenium-test\\src:/var/www/html \
  php:7.2-apache

# Wait for a second to ensure the container is up and running
sleep 1

# Disable script debugging
set +x

# Output message
echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
