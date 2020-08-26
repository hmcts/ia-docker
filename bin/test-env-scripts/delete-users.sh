#!/bin/bash
# Usage: ./delete-user.sh [csv file with user emails] [environment]
#
# Helper script to delete users from an input file with given email addresses.
#

USERS_FILE=$1
ENV=$2

if [ $# != 2 ]; then
  echo "Usage: ./delete-users.sh <csv file to read the user records from> <environment - demo/ithc/aat/perftest>"
  echo "Eg: ./delete-users.sh users-demo.csv demo"
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
  echo "Usage: ./delete-users.sh <csv file to read the user records from> <environment - demo/ithc/aat/perftest>"
  exit
  ;;
esac

# delete Users

printf "Deleting users in '%s' environment using user records from file '%s'.\n" "$ENV", "$USERS_FILE"
printf "ENV_URL is : %s \n" $ENV_URL

while IFS="," read USER_EMAIL f2; do

  [ -z "$USER_EMAIL" ] && continue

  curl -k --show-error -X DELETE \
    -x proxyout.reform.hmcts.net:8080 \
    $ENV_URL/testing-support/accounts/$USER_EMAIL \
    -H "Content-Type: application/json"

  echo "Deleted: $USER_EMAIL"
done <$USERS_FILE
