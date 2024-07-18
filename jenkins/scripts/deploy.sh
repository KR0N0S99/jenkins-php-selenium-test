#!/usr/bin/env sh

set -x

# Replace with your actual local path to the PHP project directory
LOCAL_PATH="/Users/kevan/OneDrive - Singapore Institute Of Technology/Documents/Github/jenkins-php-selenium-test/src"

# Docker run command with adjusted paths and settings
docker run -d -p 80:80 --name my-apache-php-app \
  -v "${LOCAL_PATH}:/var/www/html" \
  php:7.2-apache

# Adjust sleep time based on your application's startup time
sleep 5

set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'