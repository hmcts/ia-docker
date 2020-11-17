#!/usr/bin/env bash

# Setup Users
echo ""
echo "Setting up Users..."
./create-user-simulator.sh "ccd-import@fake.hmcts.net" "CCD" "Import" "London01" "ccd-import" "[\"ccd-import\"]"
./create-user-simulator.sh "${IA_SYSTEM_USERNAME}" "${USER_PREFIX}System" "user" "${IA_SYSTEM_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-system\"]"
./create-user-simulator.sh "${TEST_CASEOFFICER_USERNAME}" "${IA_USER_PREFIX}Case" "Officer" "${TEST_CASEOFFICER_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-caseofficer\", \"payments\"]"
./create-user-simulator.sh "${TEST_JUDICIARY_USERNAME}" "${IA_USER_PREFIX}Tribunal" "Judge" "${TEST_JUDICIARY_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-judiciary\"]"
./create-user-simulator.sh "${TEST_LAW_FIRM_A_USERNAME}" "${IA_USER_PREFIX}A" "Legal Rep" "${TEST_LAW_FIRM_A_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"payments\"]"
./create-user-simulator.sh "${TEST_LAW_FIRM_B_USERNAME}" "${IA_USER_PREFIX}B" "Legal Rep" "${TEST_LAW_FIRM_B_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"payments\"]"
./create-user-simulator.sh "${TEST_ADMINOFFICER_USERNAME}" "${IA_USER_PREFIX}Admin" "Officer" "${TEST_ADMINOFFICER_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-admofficer\", \"payments\"]"
./create-user-simulator.sh "${TEST_HOMEOFFICE_APC_USERNAME}" "${IA_USER_PREFIX}Home Office" "APC" "${TEST_HOMEOFFICE_APC_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-homeofficeapc\"]"
./create-user-simulator.sh "${TEST_HOMEOFFICE_LART_USERNAME}" "${IA_USER_PREFIX}Home Office" "LART" "${TEST_HOMEOFFICE_LART_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-homeofficelart\"]"
./create-user-simulator.sh "${TEST_HOMEOFFICE_POU_USERNAME}" "${IA_USER_PREFIX}Office" "POU" "${TEST_HOMEOFFICE_POU_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-homeofficepou\"]"
./create-user-simulator.sh "${TEST_HOMEOFFICE_GENERIC_USERNAME}" "${IA_USER_PREFIX}Home Office" "Generic" "${TEST_HOMEOFFICE_GENERIC_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-respondentofficer\"]"
./create-user-simulator.sh "${TEST_CITIZEN_USERNAME}" "${IA_USER_PREFIX}Citizen" "User" "${TEST_CITIZEN_PASSWORD}" "citizens" "[\"citizen\"]"

./create-user-simulator.sh "${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}" "${IA_USER_PREFIX}Org Creator" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_ORG_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"pui-case-manager\", \"pui-user-manager\", \"pui-finance-manager\", \"pui-organisation-manager\", \"caseworker-divorce\", \"caseworker-divorce-financialremedy\", \"caseworker-divorce-financialremedy-solicitor\", \"caseworker-divorce-solicitor\", \"caseworker-publiclaw-solicitor\", \"caseworker-publiclaw\", \"caseworker-probate-solicitor\", \"caseworker-probate\", \"caseworker-sscs\", \"caseworker-sscs-dwpresponsewriter\", \"payments\"]"
./create-user-simulator.sh "${TEST_LAW_FIRM_SHARE_CASE_A_USERNAME}" "${IA_USER_PREFIX}Share A" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_A_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"pui-case-manager\", \"payments\"]"
./create-user-simulator.sh "${TEST_LAW_FIRM_SHARE_CASE_B_USERNAME}" "${IA_USER_PREFIX}Share B" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_B_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"pui-case-manager\", \"payments\"]"

./create-user-simulator.sh "${TEST_JUDGE_X_USERNAME}" "${IA_USER_PREFIX}Judge" "X" "${TEST_JUDGE_X_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-iacjudge\"]"

./create-user-simulator.sh "${TEST_LAW_FIRM_ORG_SUCCESS_USERNAME}" "${IA_USER_PREFIX}PBA Success" "Legal Rep" "${TEST_LAW_FIRM_ORG_SUCCESS_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"payments\"]"
./create-user-simulator.sh "${TEST_LAW_FIRM_ORG_DELETED_USERNAME}" "${IA_USER_PREFIX}PBA Deleted" "Legal Rep" "${TEST_LAW_FIRM_ORG_DELETED_PASSWORD}" "caseworker" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"payments\"]"

# Setup Profiles in CCD
echo ""
echo "Setting up profiles in CCD..."

USER_TOKEN="$(sh ./idam-user-token.sh)"
SERVICE_TOKEN="$(sh ./idam-service-token.sh)"

./register-role.sh "caseworker-ia-caseofficer" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-judiciary" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-legalrep-solicitor" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-system" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-admofficer" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-homeofficeapc" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-homeofficelart" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-homeofficepou" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-respondentofficer" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-iacjudge" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "citizen" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "pui-case-manager" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "pui-user-manager" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "pui-finance-manager" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "pui-organisation-manager" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "caseworker-divorce" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-divorce-financialremedy" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-divorce-financialremedy-solicitor" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-divorce-solicitor" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "caseworker-publiclaw-solicitor" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-publiclaw" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "caseworker-probate-solicitor" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-probate" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "caseworker-sscs" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-sscs-dwpresponsewriter" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "payments" "$USER_TOKEN" "$SERVICE_TOKEN"

echo ""
echo "Setting CCD Roles and Users is finished"

echo ""
echo "Setup Wiremock responses for Professional Reference Data based on existing Idam users..."
./wiremock.sh
