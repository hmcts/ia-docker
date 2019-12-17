#!/bin/bash
# Usage: ./delete-user.sh [user-email]
# 
# Helper script to delete a user with a given email address.
# 
# Assumes IDAM_URL is already set in environment vars.

USERNAME="${1}"

curl --silent --show-error -X DELETE \
  ${IDAM_URL}/testing-support/accounts/$USERNAME \
  -H "Content-Type: application/json"
