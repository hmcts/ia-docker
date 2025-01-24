#!/usr/bin/env bash

export ROLE_ASSIGNMENT_URL=http://am-role-assignment-service:4096
export CCD_URL=http://ccd-data-store-api:4452
# Setup Users
./wa-create-users.sh

# Register roles
./wa-register-roles.sh

echo "Deploying camunda bpmn and dmn"
./camunda-deployment.sh
