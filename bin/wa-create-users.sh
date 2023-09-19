#!/usr/bin/env bash

# Setup Users
echo ""
echo "Setting up required Users..."
./create-user.sh "ccd-import@fake.hmcts.net" "CCD" "Import" "London01" "ccd-import" "[{\"code\":\"ccd-import\"}]"
./create-user.sh "${IA_SYSTEM_USERNAME}" "System" "user" "${IA_SYSTEM_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-system\"}]"
./create-user.sh "${CCD_SYSTEM_USERNAME}" "${USER_PREFIX}CCD System" "user" "${CCD_SYSTEM_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}]"
./organisational-role-assignment.sh "${IA_SYSTEM_USERNAME}" "${IA_SYSTEM_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${IA_SYSTEM_USERNAME}" "${IA_SYSTEM_PASSWORD}" "PUBLIC" "hearing-manager" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${IA_SYSTEM_USERNAME}" "${IA_SYSTEM_PASSWORD}" "PUBLIC" "hearing-viewer" '{"jurisdiction":"IA","primaryLocation":"765324"}'

echo "Setting up WA test accounts"
./create-user.sh "${TEST_WA_CASEOFFICER_A_USERNAME}" "CaseOfficer" "TestPurposes A" "${TEST_WA_CASEOFFICER_A_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}]"
./create-user.sh "${TEST_WA_CASEOFFICER_B_USERNAME}" "CaseOfficer" "TestPurposes B" "${TEST_WA_CASEOFFICER_B_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}]"
./create-user.sh "${TEST_WA_LAW_FIRM_USERNAME}" "LegalRep" "TestPurposes" "${TEST_WA_LAW_FIRM_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-system\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"
./organisational-role-assignment.sh "${TEST_WA_LAW_FIRM_USERNAME}" "${TEST_WA_LAW_FIRM_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_LAW_FIRM_USERNAME}" "${TEST_WA_LAW_FIRM_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_LAW_FIRM_USERNAME}" "${TEST_WA_LAW_FIRM_PASSWORD}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"IA","primaryLocation":"765324"}'

./create-user.sh "${TEST_WA_DLQ_PROCESS_USERNAME}" "WAUser" "WaDlqProcess" "${TEST_WA_DLQ_PROCESS_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-system\"}, { \"code\": \"caseworker-wa\"}, { \"code\": \"caseworker-wa-task-configuration\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"
./organisational-role-assignment.sh "${TEST_WA_DLQ_PROCESS_USERNAME}" "${TEST_WA_DLQ_PROCESS_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_DLQ_PROCESS_USERNAME}" "${TEST_WA_DLQ_PROCESS_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_DLQ_PROCESS_USERNAME}" "${TEST_WA_DLQ_PROCESS_PASSWORD}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"IA","primaryLocation":"765324"}'

echo "Setting up WA Users and role assignments..."
./create-user.sh "${WA_SYSTEM_USERNAME}" "WASystem" "WaUser" "${WA_SYSTEM_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-system\"}, { \"code\": \"caseworker-wa\"}, { \"code\": \"caseworker-wa-task-configuration\"}]"

./create-user.sh "${TEST_WA_CASEOFFICER_PUBLIC_A_USERNAME}" "CaseOfficer" "A-Public" "${TEST_WA_CASEOFFICER_PUBLIC_A_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}]"
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_A_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_A_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_A_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_A_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_A_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_A_PASSWORD}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"IA","primaryLocation":"765324"}'

./create-user.sh "${TEST_WA_CASEOFFICER_PUBLIC_B_USERNAME}" "CaseOfficer" "B-Public" "${TEST_WA_CASEOFFICER_PUBLIC_B_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}]"
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_B_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_B_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","region":"east-england","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_B_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_B_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","region":"east-england","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_B_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_B_PASSWORD}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"IA","region":"east-england","primaryLocation":"765324"}'

./create-user.sh "${TEST_WA_CASEOFFICER_PUBLIC_C_USERNAME}" "CaseOfficer" "C-Public" "${TEST_WA_CASEOFFICER_PUBLIC_C_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}]"
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_C_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_C_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_C_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_C_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_C_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_C_PASSWORD}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"IA","primaryLocation":"765324"}'

./create-user.sh "${TEST_WA_CASEOFFICER_PUBLIC_D_USERNAME}" "CaseOfficer" "D-Public" "${TEST_WA_CASEOFFICER_PUBLIC_D_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}]"
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_D_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_D_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","region":"east-england","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_D_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_D_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","region":"east-england","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_WA_CASEOFFICER_PUBLIC_D_USERNAME}" "${TEST_WA_CASEOFFICER_PUBLIC_D_PASSWORD}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"IA","region":"east-england","primaryLocation":"765324"}'

./create-user.sh "${WA_CASEOFFICER_USERNAME}" "WaCaseOfficer" "case worker" "${WA_CASEOFFICER_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-wa\"}, {\"code\": \"caseworker-wa-task-officer\"}]"
./organisational-role-assignment.sh "${WA_CASEOFFICER_USERNAME}" "${WA_CASEOFFICER_USERNAME}" "PUBLIC" "case-allocator" '{"jurisdiction":"WA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${WA_CASEOFFICER_USERNAME}" "${WA_CASEOFFICER_USERNAME}" "PUBLIC" "task-supervisor" '{"jurisdiction":"WA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${WA_CASEOFFICER_USERNAME}" "${WA_CASEOFFICER_USERNAME}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"WA","primaryLocation":"765324"}'


echo "Setting up CTSC Users..."
./create-user.sh "${TEST_CTSC_ADMIN_USERNAME}" "CTSC" "Admin" "${TEST_CTSC_ADMIN_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"hmcts-ctsc\"}, { \"code\": \"payments\"}]"
./organisational-role-assignment-ctsc.sh "${TEST_CTSC_ADMIN_USERNAME}" "${TEST_CTSC_ADMIN_PASSWORD}" "PUBLIC" "ctsc" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment-ctsc.sh "${TEST_CTSC_ADMIN_USERNAME}" "${TEST_CTSC_ADMIN_PASSWORD}" "PUBLIC" "hearing-manager" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment-ctsc.sh "${TEST_CTSC_ADMIN_USERNAME}" "${TEST_CTSC_ADMIN_PASSWORD}" "PUBLIC" "hearing-viewer" '{"jurisdiction":"IA","primaryLocation":"765324"}'

echo "Setting up IA Users..."
./create-user.sh "${TEST_CASEOFFICER_USERNAME}" "Case" "Officer" "${TEST_CASEOFFICER_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-caseofficer\"}, { \"code\": \"payments\"}]"
./organisational-role-assignment.sh "${TEST_CASEOFFICER_USERNAME}" "${TEST_CASEOFFICER_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_CASEOFFICER_USERNAME}" "${TEST_CASEOFFICER_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_CASEOFFICER_USERNAME}" "${TEST_CASEOFFICER_PASSWORD}" "PUBLIC" "tribunal-caseworker" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_CASEOFFICER_USERNAME}" "${TEST_CASEOFFICER_PASSWORD}" "PUBLIC" "hearing-manager" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_CASEOFFICER_USERNAME}" "${TEST_CASEOFFICER_PASSWORD}" "PUBLIC" "hearing-viewer" '{"jurisdiction":"IA","primaryLocation":"765324"}'

./create-user.sh "${TEST_JUDICIARY_USERNAME}" "Tribunal" "Judge" "${TEST_JUDICIARY_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-judiciary\"}]"
./create-user.sh "${TEST_LAW_FIRM_A_USERNAME}" "A" "Legal Rep" "${TEST_LAW_FIRM_A_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-system\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_B_USERNAME}" "B" "Legal Rep" "${TEST_LAW_FIRM_B_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, {\"code\": \"caseworker-ia-legalrep-solicitor\"},{ \"code\": \"payments\"}]"
./create-user.sh "${TEST_ADMINOFFICER_USERNAME}" "admin" "Officer" "${TEST_ADMINOFFICER_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-admofficer\"}, { \"code\": \"payments\"}]"
./organisational-role-assignment.sh "${TEST_ADMINOFFICER_USERNAME}" "${TEST_ADMINOFFICER_PASSWORD}" "PUBLIC" "hearing-manager" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_ADMINOFFICER_USERNAME}" "${TEST_ADMINOFFICER_PASSWORD}" "PUBLIC" "hearing-viewer" '{"jurisdiction":"IA","primaryLocation":"765324"}'

./create-user.sh "${TEST_HOMEOFFICE_APC_USERNAME}" "Home Office" "APC" "${TEST_HOMEOFFICE_APC_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-homeofficeapc\"}]"
./create-user.sh "${TEST_HOMEOFFICE_LART_USERNAME}" "Home Office" "LART" "${TEST_HOMEOFFICE_LART_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-homeofficelart\"}]"
./create-user.sh "${TEST_HOMEOFFICE_POU_USERNAME}" "Home Office" "POU" "${TEST_HOMEOFFICE_POU_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-homeofficepou\"}]"
./create-user.sh "${TEST_HOMEOFFICE_GENERIC_USERNAME}" "Home Office" "Generic" "${TEST_HOMEOFFICE_GENERIC_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-respondentofficer\"}]"
./create-user.sh "${TEST_CITIZEN_USERNAME}" "Citizen" "User" "${TEST_CITIZEN_PASSWORD}" "citizens" "[{\"code\": \"citizen\"}]"

./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}" "Org Creator" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_ORG_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"pui-user-manager\"}, { \"code\": \"pui-finance-manager\"}, { \"code\": \"pui-organisation-manager\"}, { \"code\": \"caseworker-divorce\"}, { \"code\": \"caseworker-divorce-financialremedy\"}, { \"code\": \"caseworker-divorce-financialremedy-solicitor\"}, { \"code\": \"caseworker-divorce-solicitor\"}, { \"code\": \"caseworker-publiclaw-solicitor\"}, { \"code\": \"caseworker-publiclaw\"}, { \"code\": \"caseworker-probate-solicitor\"}, { \"code\": \"caseworker-probate\"}, { \"code\": \"caseworker-sscs\"}, { \"code\": \"caseworker-sscs-dwpresponsewriter\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_A_USERNAME}" "Share A" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_A_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_B_USERNAME}" "Share B" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_B_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"payments\"}]"

./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_ORG2_USERNAME}" "${IA_USER_PREFIX}Org Creator2" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_ORG2_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"pui-user-manager\"}, { \"code\": \"pui-finance-manager\"}, { \"code\": \"pui-organisation-manager\"}, { \"code\": \"caseworker-divorce\"}, { \"code\": \"caseworker-divorce-financialremedy\"}, { \"code\": \"caseworker-divorce-financialremedy-solicitor\"}, { \"code\": \"caseworker-divorce-solicitor\"}, { \"code\": \"caseworker-publiclaw-solicitor\"}, { \"code\": \"caseworker-publiclaw\"}, { \"code\": \"caseworker-probate-solicitor\"}, { \"code\": \"caseworker-probate\"}, { \"code\": \"caseworker-sscs\"}, { \"code\": \"caseworker-sscs-dwpresponsewriter\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_C_USERNAME}" "${IA_USER_PREFIX}Share C" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_C_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_SHARE_CASE_D_USERNAME}" "${IA_USER_PREFIX}Share D" "Legal Rep" "${TEST_LAW_FIRM_SHARE_CASE_D_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"pui-case-manager\"}, { \"code\": \"payments\"}]"

./create-user.sh "${TEST_JUDGE_X_USERNAME}" "Judge" "X" "${TEST_JUDGE_X_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker\"}, { \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-iacjudge\"}]"
./organisational-role-assignment.sh "${TEST_JUDGE_X_USERNAME}" "${TEST_JUDGE_X_PASSWORD}" "PUBLIC" "case-allocator" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment.sh "${TEST_JUDGE_X_USERNAME}" "${TEST_JUDGE_X_PASSWORD}" "PUBLIC" "task-supervisor" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment-judge.sh "${TEST_JUDGE_X_USERNAME}" "${TEST_JUDGE_X_PASSWORD}" "PUBLIC" "judge" '{"jurisdiction":"IA","primaryLocation":"765324"}'
./organisational-role-assignment-judge.sh "${TEST_JUDGE_X_USERNAME}" "${TEST_JUDGE_X_PASSWORD}" "PUBLIC" "hearing-viewer" '{"jurisdiction":"IA","primaryLocation":"765324"}'

./create-user.sh "${TEST_LAW_FIRM_ORG_SUCCESS_USERNAME}" "${IA_USER_PREFIX}PBA Success" "Legal Rep" "${TEST_LAW_FIRM_ORG_SUCCESS_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"
./create-user.sh "${TEST_LAW_FIRM_ORG_DELETED_USERNAME}" "${IA_USER_PREFIX}PBA Deleted" "Legal Rep" "${TEST_LAW_FIRM_ORG_DELETED_PASSWORD}" "caseworker" "[{ \"code\": \"caseworker-ia\"}, { \"code\": \"caseworker-ia-legalrep-solicitor\"}, { \"code\": \"payments\"}]"

./create-user.sh "caa-caseworker@fake.hmcts.net" "${USER_PREFIX}CAA-System" "user" "London21" "caseworker" "[{ \"code\": \"caseworker-caa\"}]"
./create-user.sh "approver-caseworker@fake.hmcts.net" "${USER_PREFIX}Approver-System" "user" "London22" "caseworker" "[{ \"code\": \"caseworker-approver\"}, { \"code\": \"prd-aac-system\"}]"
./create-user.sh "approver-noc@fake.com" "${USER_PREFIX}Approver-NoC" "user" "Pa55word11" "caseworker" "[{ \"code\": \"caseworker-approver\"}, { \"code\": \"prd-aac-system\"}]"
