#!/bin/bash
# 
# Helper script to delete a service with a given name
# Optionally pass in a service name to delete
# 
# IDAM_URL ADMIN_USER ADMIN_PASSORD should be set in environment vars.

SERVICE_NAME="${1:-ccd_gateway}"

API_TOKEN=$(sh ./authenticate.sh "${IDAM_URL}" "${IDAM_ADMIN_USER}" "${IDAM_ADMIN_PASSWORD}")

curl -X DELETE \
  http://localhost:5000/testing-support/services/$SERVICE_NAME \
   -H 'Content-Type: application/json' \
   -H "Authorization: AdminApiAuthToken ${API_TOKEN}" \
