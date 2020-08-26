#!/usr/bin/env bash
# Usage: ./setup-users.sh [csv file with user emails] [environment]
#
# Helper script to delete users from an input file with given email addresses.
#

USERS_FILE=$1
ENV=$2

if [ $# != 2 ]; then
  echo "Usage: ./setup-users.sh <csv file to read the user records from> <environment - demo/ithc/aat/perftest>"
  echo "Eg: ./setup-users.sh users-demo.csv demo"
  exit 1
fi

# set IDAM URL
ENV_URL=""

case $ENV in
demo)
  ENV_URL=${IDAM_DEMO_URL}
  ;;
ithc)
  ENV_URL=${IDAM_ITHC_URL}
  ;;
aat)
  ENV_URL=${IDAM_AAT_URL}
  ;;
perftest)
  ENV_URL=${IDAM_PERFTEST_URL}
  ;;
*)
  echo "Invalid environment specified. Allowed environments are demo/ithc/aat/perftest"
  echo "Usage: ./setup-users.sh <csv file to read the user records from> <environment - demo/ithc/aat/perftest>"
  exit
  ;;
esac

# Setup Users
printf "Setting up users in '%s' using user records from file '%s'.\n" "$ENV", "$USERS_FILE"
printf "ENV_URL is : %s \n" "$ENV_URL"

while IFS="," read -r EMAIL FORENAME SURNAME PASSWORD ROLES; do

  [ -z "$EMAIL" ] && continue

  roles=""
  length=""

  for i in $(echo $ROLES | tr ";" "\n"); do
    roles="$roles{ \"code\": \"$i\"},"
  done

  length=$((${#roles} - 1))
  rolesJson=${roles:0:length}

  printf "Creating user with:\tEmail: %s \tPassword: %s \tForename: %s \tSurname: %s \tRoles: %s \n" "$EMAIL", "$PASSWORD", "$FORENAME", "$SURNAME", "$ROLES"

  curl -k --show-error \
    -x proxyout.reform.hmcts.net:8080 \
    $ENV_URL/testing-support/accounts \
    -H "Content-Type: application/json" \
    -d '{"email": "'"${EMAIL}"'",
       "forename": "'"${FORENAME}"'",
       "surname": "'"${SURNAME}"'",
       "password": "'"${PASSWORD}"'",
       "levelOfAccess":1,
       "roles": '"[${rolesJson}]"'
      }'

  echo "Created"
  echo ""
done <$USERS_FILE
