#!/usr/bin/env bash

export ROLE_ASSIGNMENT_URL=http://am-role-assignment-service:4096
export CCD_URL=http://ccd-data-store-api:4452
# Setup Users
./wa-create-users.sh

# Register roles
./wa-register-roles.sh

echo ""
echo "Setup Wiremock responses for Professional Reference Data based on existing Idam users..."
./wiremock.sh
./wiremock-caseflags-all.sh
./wiremock-caseflags-case.sh
./wiremock-caseflags-party.sh
./wiremock-languages.sh

echo "Setup Wiremock responses for XUI calls to Ref Data service(s) in HMC Hearings tab"
./wiremock-hearings-tab/run-all-wiremock-hearings-tab.sh


echo "Deploying camunda bpmn and dmn"
./camunda-deployment.sh
