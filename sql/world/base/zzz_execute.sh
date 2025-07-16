#!/bin/bash

FOLDER="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
USER="acore"
PASS="acore"
BASE="acore_world_progression"
ADDRESS="localhost"

if [ ! -d "$FOLDER" ]; then
  echo "Folder $FOLDER not found"
  exit 1
fi

for f in $(ls "$FOLDER"/*.sql | sort); do
  echo "Execute $f"
  mysql -h "$ADDRESS" -u "$USER" -p"$PASS" "$BASE" < "$f"
  if [ $? -ne 0 ]; then
    echo "Fail $f"
    exit 1
  fi
done

echo "All SQL scripts executed successfully"