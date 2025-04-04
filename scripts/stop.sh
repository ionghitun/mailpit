#!/bin/sh
echo "*** Starting... ***"

cd scripts || exit

docker compose -p mailpit down

echo "*** Started ***"
