#!/usr/bin/env bash

echo ""
echo "Setup Wiremock responses for Professional Reference Data based on existing Idam users..."
./wiremock.sh
./wiremock-caseflags-all.sh
./wiremock-caseflags-case.sh
./wiremock-caseflags-party.sh
./wiremock-languages.sh

echo "Setup Wiremock responses for XUI calls to Ref Data service(s) in HMC Hearings tab"
./wiremock-hearings-tab/run-all-wiremock-hearings-tab.sh

