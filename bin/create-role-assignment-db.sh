#!/usr/bin/env bash

set -e

if [ -z "$DB_EXTERNAL_PORT" ] || [ -z "$DB_USERNAME" ] || [ -z "$DB_PASSWORD" ]; then
  echo "ERROR: Missing environment variable. Set value for 'DB_EXTERNAL_PORT', 'DB_USERNAME' and 'DB_PASSWORD'."
  exit 1
fi

# Create role_assignment database
echo "Creating role_assignment Database..."
psql -h localhost -p $DB_EXTERNAL_PORT -v ON_ERROR_STOP=1 --username postgres --set USERNAME=$DB_USERNAME --set PASSWORD=$DB_PASSWORD --set DATABASE=role_assignment <<-EOSQL
  CREATE DATABASE :DATABASE
    WITH OWNER = :USERNAME
    ENCODING = 'UTF-8'
    CONNECTION LIMIT = -1;
EOSQL
echo "Database Created"
