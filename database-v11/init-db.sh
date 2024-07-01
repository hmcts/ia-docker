#!/usr/bin/env bash

set -e

if [ -z "$DB_EXTERNAL_PORT" ] || [ -z "$DB_USERNAME" ] || [ -z "$DB_PASSWORD" ]; then
  echo "ERROR: Missing environment variable. Set value for 'DB_EXTERNAL_PORT', 'DB_USERNAME' and 'DB_PASSWORD'."
  exit 1
fi

# Create roles and databases
psql -h localhost -p $DB_EXTERNAL_PORT -v ON_ERROR_STOP=1 --username postgres --set USERNAME=$DB_USERNAME --set PASSWORD=$DB_PASSWORD <<-EOSQL
  CREATE USER :USERNAME WITH PASSWORD ':PASSWORD';
EOSQL

for service in idam ccd_user_profile ccd_definition ccd_data evidence ccd_definition_designer ia_case_api ia_timed_event_service camunda role_assignment openidm wa_workflow_api cft_task_db wa_case_event_messages_db; do
  echo "Database $service: Creating..."
psql -h localhost -p $DB_EXTERNAL_PORT -v ON_ERROR_STOP=1 --username postgres --set USERNAME=$DB_USERNAME --set PASSWORD=$DB_PASSWORD --set DATABASE=$service <<-EOSQL
  CREATE DATABASE :DATABASE
    WITH OWNER = :USERNAME
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;
EOSQL
  echo "Database $service: Created"
done
