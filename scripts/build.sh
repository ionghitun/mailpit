#!/bin/sh
echo "*** Rebuild start ***"

cd scripts || exit

# Prompt user for input
echo "Want to update images before rebuild? (y/n) [default: y]: "
read UPDATE_IMAGES
UPDATE_IMAGES=${UPDATE_IMAGES:-y}

# Check user input in a POSIX-compatible way
if [ "$UPDATE_IMAGES" = "y" ] || [ "$UPDATE_IMAGES" = "Y" ]; then
    NGINX_VERSION=$(grep -oP '^NGINX_VERSION=\K.*' .env)
    MAILPIT_VERSION=$(grep -oP '^MAILPIT_VERSION=\K.*' .env)

    docker pull "nginx:$NGINX_VERSION"
    docker pull "axllent/mailpit:$MAILPIT_VERSION"
fi

echo "*** Rebuilding application ***"
docker compose -p mailpit build --no-cache
docker compose -p mailpit up -d

echo "*** Rebuild ended ***"
