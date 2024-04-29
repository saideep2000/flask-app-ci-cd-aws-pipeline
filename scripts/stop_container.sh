#!/bin/bash
set -e

# Get all running container IDs
containerids=$(docker ps -q)

# Check if we got any container ID back
if [[ -n "$containerids" ]]; then
  # Stop and remove each container
  docker rm -f $containerids
else
  echo "No running containers to stop"
fi
