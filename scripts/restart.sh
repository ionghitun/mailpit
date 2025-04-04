#!/bin/sh
echo "*** Restarting... ***"

cd scripts || exit

docker compose -p mailpit restart

echo "*** Restarted ***"
