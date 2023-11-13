#!/usr/bin/env bash

echo ""
echo "Registering roles in CCD..."

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
./register-role.sh "caseworker-wa-task-configuration" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-srcaseofficer" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "caseworker-ras-validation" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-caa" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-approver" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-ia-system-access" "$USER_TOKEN" "$SERVICE_TOKEN"

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

# Roles required for Notice of Change
./register-role.sh "caseworker-approver" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "prd-aac-system" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker-wa-task-officer" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "GS_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseflags_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "caseworker_admin_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "hmcts-staff" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "hmcts-judiciary" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "ctsc" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "hmcts-admin" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "hmcts-legal-operations" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "specific-access-admin" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "specific-access-legal-ops" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "specific-access-judiciary" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "ia_specific_access_admin_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "ia_specific_access_legal_ops_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "ia_specific_access_judge_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "ia_specific_access_ctsc_profile" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "caseworker-ia-homeofficebail" "$USER_TOKEN" "$SERVICE_TOKEN"

./register-role.sh "ia_caselinks_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "ia_caseflags_profile" "$USER_TOKEN" "$SERVICE_TOKEN"
./register-role.sh "ia_caseflags_readonly_profile" "$USER_TOKEN" "$SERVICE_TOKEN"

echo ""
echo "Registering CCD Roles has completed"
