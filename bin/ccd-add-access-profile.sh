#!/bin/bash
## Usage: ./ccd-add-access-profile.sh role [classification]
##
## Options:
##    - role: Name of the access profile.
##    - classification: Classification granted to the role; one of `PUBLIC`,
##        `PRIVATE` or `RESTRICTED`. Default to `PUBLIC`.
##
## Add support for an IDAM role in CCD.

role=$1
classification=${2:-PUBLIC}

if [ -z "$role" ]
  then
    echo "Usage: ./ccd-add-access-profile.sh role [classification]"
    exit 1
fi

case $classification in
  PUBLIC|PRIVATE|RESTRICTED)
    ;;
  *)
    echo "Classification must be one of: PUBLIC, PRIVATE or RESTRICTED"
    exit 1 ;;
esac

binFolder=$(dirname "$0")

userToken="$(${binFolder}/idam-user-token.sh ccd-import@fake.hmcts.net London01)"
serviceToken="$(${binFolder}/idam-service-token.sh ccd_gw)"

curl -XPOST \
  http://localhost:4451/api/user-role \
  -H "Authorization: Bearer ${userToken}" \
  -H "ServiceAuthorization: Bearer ${serviceToken}" \
  -H "Content-Type: application/json" \
  -d '{"role":"'${role}'","security_classification":"'${classification}'"}'
