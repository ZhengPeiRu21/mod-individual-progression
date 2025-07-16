#!/bin/bash

FOLDER="./"
USER="acore"
PASS="acore"
BASE="acore_world_progression"
ADDRESS="localhost"

if [ ! -d "$FOLDER" ]; then
  echo "Folder not found: $FOLDER"
  exit 1
fi

for f in $(ls "$FOLDER"/*.sql | sort); do
  echo "Executing: $f"
  mysql -h "$ADDRESS" -u "$USER" -p"$PASS" "$BASE" < "$f"
  if [ $? -ne 0 ]; then
    echo "Failed on $f"
    exit 1
  fi
done

echo "All SQL scripts executed on database: $BASE"
