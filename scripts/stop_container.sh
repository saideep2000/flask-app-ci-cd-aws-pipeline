#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps | awk '{print $1}')

if [ ! -z "$containerid" ]; then
  docker rm -f $containerid
else
  echo "No running containers to stop"
fi
