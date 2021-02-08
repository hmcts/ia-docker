#!/usr/bin/env bash

# Setup Services
echo "Setting up Services..."
./create-service.sh "ccd_gateway" "false" "ccd_gateway" "OOOOOOOOOOOOOOOO" "[\"http://localhost:3451/oauth2redirect\", \"http://localhost:3002/oauth2/callback\", \"https://localhost:3000/redirectUrl\"]" "[\"caseworker\", \"caseworker-ia\", \"caseworker-ia-legalrep-solicitor\", \"pui-case-manager\"]" "CCD Gateway" "CCD scope manage-user create-user openid profile roles"


# Setup Roles
echo ""
echo "Setting up Roles..."
./create-role.sh "ccd-import"
./create-role.sh "citizen"
./create-role.sh "citizens"
./create-role.sh "caseworker"
./create-role.sh "caseworker-ia"
./create-role.sh "caseworker-ia-caseofficer"
./create-role.sh "caseworker-ia-judiciary"
./create-role.sh "caseworker-ia-legalrep-solicitor"
./create-role.sh "caseworker-ia-system"
./create-role.sh "caseworker-ia-admofficer"
./create-role.sh "caseworker-ia-homeofficeapc"
./create-role.sh "caseworker-ia-homeofficelart"
./create-role.sh "caseworker-ia-homeofficepou"
./create-role.sh "caseworker-ia-respondentofficer"
./create-role.sh "caseworker-ia-iacjudge"
./create-role.sh "payments"

# Roles required for XUI
echo ""
echo "Setting up Roles required for XUI..."
./create-role.sh "pui-case-manager"
./create-role.sh "pui-user-manager"
./create-role.sh "pui-organisation-manager"
./create-role.sh "pui-finance-manager"

./create-role.sh "caseworker-divorce"
./create-role.sh "caseworker-divorce-solicitor"
./create-role.sh "caseworker-divorce-financialremedy"
./create-role.sh "caseworker-divorce-financialremedy-solicitor"

./create-role.sh "caseworker-publiclaw"
./create-role.sh "caseworker-publiclaw-solicitor"
./create-role.sh "caseworker-probate"
./create-role.sh "caseworker-probate-solicitor"
./create-role.sh "caseworker-sscs"
./create-role.sh "caseworker-sscs-dwpresponsewriter"

# Roles required for Share A Case
echo ""
echo "Setting up Roles required for Share A Case..."
./create-role.sh "caseworker-caa"

# Setup Users
echo ""
echo "Setting up Users..."
./create-user.sh "ccd-import@fake.hmcts.net" "CCD" "Import" "London01" "ccd-import" "[{ \"code\": \"ccd-import\"}]"
./create-user.sh "${IA_SYSTEM_USERNAME}" "${USER_PREFIX}System" "user" "${IA_SYSTEM_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-system\"}]"
./create-user.sh "${TEST_CASEOFFICER_USERNAME}" "${IA_USER_PREFIX}Case" "Officer" "${TEST_CASEOFFICER_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_JUDICIARY_USERNAME}" "${IA_USER_PREFIX}Tribunal" "Judge" "${TEST_JUDICIARY_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-judiciary\"}]"
./create-user.sh "${TEST_LAW_FIRM_A_USERNAME}" "${IA_USER_PREFIX}A" "Legal Rep" "${TEST_LAW_FIRM_A_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_B_USERNAME}" "${IA_USER_PREFIX}B" "Legal Rep" "${TEST_LAW_FIRM_B_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_ADMINOFFICER_USERNAME}" "${IA_USER_PREFIX}Admin" "Officer" "${TEST_ADMINOFFICER_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-admofficer\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_HOMEOFFICE_APC_USERNAME}" "${IA_USER_PREFIX}Home Office" "APC" "${TEST_HOMEOFFICE_APC_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-homeofficeapc\"}]"
./create-user.sh "${TEST_HOMEOFFICE_LART_USERNAME}" "${IA_USER_PREFIX}Home Office" "LART" "${TEST_HOMEOFFICE_LART_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-homeofficelart\"}]"
./create-user.sh "${TEST_HOMEOFFICE_POU_USERNAME}" "${IA_USER_PREFIX}Office" "POU" "${TEST_HOMEOFFICE_POU_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-homeofficepou\"}]"
./create-user.sh "${TEST_HOMEOFFICE_GENERIC_USERNAME}" "${IA_USER_PREFIX}Home Office" "Generic" "${TEST_HOMEOFFICE_GENERIC_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-respondentofficer\"}]"
./create-user.sh "${TEST_CITIZEN_USERNAME}" "${IA_USER_PREFIX}Citizen" "User" "${TEST_CITIZEN_PASSWORD}" "citizens" "[{ \"code\": \"citizen\"}]"

./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}" "${IA_USER_PREFIX}Org Creator" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_ORG_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"pui-user-manager\"}, { \"code\": \"pui-finance-manager\"}, { \"code\": \"pui-organisation-manager\"}, { \"code\": \"caseworker-divorce\"}, { \"code\": \"caseworker-divorce-financialremedy\"}, { \"code\": \"caseworker-divorce-financialremedy-solicitor\"}, { \"code\": \"caseworker-divorce-solicitor\"}, { \"code\": \"caseworker-publiclaw-solicitor\"}, { \"code\": \"caseworker-publiclaw\"}, { \"code\": \"caseworker-probate-solicitor\"}, { \"code\": \"caseworker-probate\"}, { \"code\": \"caseworker-sscs\"}, { \"code\": \"caseworker-sscs-dwpresponsewriter\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_A_USERNAME}" "${IA_USER_PREFIX}Share A" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_A_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_B_USERNAME}" "${IA_USER_PREFIX}Share B" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_B_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"payments\"}]"

./create-user.sh "${TEST_JUDGE_X_USERNAME}" "${IA_USER_PREFIX}Judge" "X" "${TEST_JUDGE_X_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-iacjudge\"}]"

./create-user.sh "${TEST_LAW_FIRM_ORG_SUCCESS_USERNAME}" "${IA_USER_PREFIX}PBA Success" "Legal Rep" "${TEST_LAW_FIRM_ORG_SUCCESS_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_ORG_DELETED_USERNAME}" "${IA_USER_PREFIX}PBA Deleted" "Legal Rep" "${TEST_LAW_FIRM_ORG_DELETED_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"

./create-user.sh "caa-caseworker@fake.hmcts.net" "${USER_PREFIX}CAA-System" "user" "London21" "caseworker" "[{ \"code\": \"caseworker-caa\"}]"

# Refresh cache
echo ""
echo "Refreshing cache..."

curl --silent --show-error -X POST "${IDAM_URL}/testing-support/cache/refresh" -H "accept: */*"


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

./register-role.sh "caseworker-caa" "$USER_TOKEN" "$SERVICE_TOKEN"

echo ""
echo "Setting CCD Roles and Users is finished"

echo ""
echo "Setup Wiremock responses for Professional Reference Data based on existing Idam users..."
./wiremock.sh
