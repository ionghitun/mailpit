#!/bin/sh
echo "*** Starting... ***"

cd scripts || exit

docker compose -p mailpit up -d

echo "*** Started ***"
