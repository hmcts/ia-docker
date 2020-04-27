#!/usr/bin/env bash

# Setup Wiremock responses for Professional Reference Data based on existing Idam users

share_case_org_code="$(sh ./idam-user-token.sh "${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}" "${TEST_LAW_FIRM_SHARE_CASE_ORG_PASSWORD}")"
share_case_org_id="$(curl --silent --show-error -X GET "${IDAM_URL}/details" -H "accept: application/json" -H "authorization: Bearer ${share_case_org_code}" | jq -r .id )"

share_case_a_code="$(sh ./idam-user-token.sh "${TEST_LAW_FIRM_SHARE_CASE_A_USERNAME}" "${TEST_LAW_FIRM_SHARE_CASE_A_PASSWORD}")"
share_case_a_id="$(curl --silent --show-error -X GET "${IDAM_URL}/details" -H "accept: application/json" -H "authorization: Bearer ${share_case_a_code}" | jq -r .id )"

share_case_b_code="$(sh ./idam-user-token.sh "${TEST_LAW_FIRM_SHARE_CASE_B_USERNAME}" "${TEST_LAW_FIRM_SHARE_CASE_B_PASSWORD}")"
share_case_b_id="$(curl --silent --show-error -X GET "${IDAM_URL}/details" -H "accept: application/json" -H "authorization: Bearer ${share_case_b_code}" | jq -r .id )"

curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "url": "/refdata/external/v1/organisations/users"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
              "users": [
                {
                  "userIdentifier": "'"${share_case_org_id}"'",
                  "firstName": "Org Creator",
                  "lastName": "Legal Rep",
                  "email": "'"${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}"'",
                  "roles": [
                    "caseworker-publiclaw-solicitor",
                    "pui-case-manager",
                    "caseworker",
                    "caseworker-divorce-solicitor",
                    "caseworker-ia",
                    "pui-user-manager",
                    "caseworker-publiclaw",
                    "caseworker-ia-legalrep-solicitor",
                    "caseworker-probate-solicitor",
                    "pui-organisation-manager",
                    "caseworker-divorce",
                    "caseworker-divorce-financialremedy",
                    "prd-admin",
                    "pui-finance-manager",
                    "caseworker-probate",
                    "caseworker-divorce-financialremedy-solicitor"
                  ],
                  "idamStatus": "ACTIVE",
                  "idamStatusCode": "200",
                  "idamMessage": "11 OK"
                },
                {
                  "userIdentifier": "'"${share_case_a_id}"'",
                  "firstName": "Share A",
                  "lastName": "Legal Rep",
                  "email": "'"${TEST_LAW_FIRM_SHARE_CASE_A_USERNAME}"'",
                  "roles": [
                    "caseworker-publiclaw-solicitor",
                    "pui-case-manager",
                    "caseworker",
                    "caseworker-divorce",
                    "caseworker-divorce-financialremedy",
                    "caseworker-divorce-solicitor",
                    "caseworker-probate",
                    "caseworker-ia",
                    "caseworker-divorce-financialremedy-solicitor",
                    "caseworker-publiclaw",
                    "caseworker-ia-legalrep-solicitor",
                    "caseworker-probate-solicitor"
                  ],
                  "idamStatus": "ACTIVE",
                  "idamStatusCode": "200",
                  "idamMessage": "11 OK"
                },
                {
                  "userIdentifier": "'"${share_case_b_id}"'",
                  "firstName": "Share B",
                  "lastName": "Legal Rep",
                  "email": "'"${TEST_LAW_FIRM_SHARE_CASE_B_USERNAME}"'",
                  "roles": [
                    "caseworker-publiclaw-solicitor",
                    "pui-case-manager",
                    "caseworker",
                    "caseworker-divorce",
                    "caseworker-divorce-financialremedy",
                    "caseworker-divorce-solicitor",
                    "caseworker-probate",
                    "caseworker-ia",
                    "caseworker-divorce-financialremedy-solicitor",
                    "caseworker-publiclaw",
                    "caseworker-ia-legalrep-solicitor",
                    "caseworker-probate-solicitor"
                  ],
                  "idamStatus": "ACTIVE",
                  "idamStatusCode": "200",
                  "idamMessage": "11 OK"
                }
              ]
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "url": "/health"
    },
    "response": {
        "status": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "jsonBody": {
            "status": "UP",
            "components": {
                "db": {
                    "status": "UP",
                    "details": {
                        "database": "PostgreSQL",
                        "result": 1,
                        "validationQuery": "SELECT 1"
                    }
                },
                "diskSpace": {
                    "status": "UP",
                    "details": {
                        "total": 33685291008,
                        "free": 9184305152,
                        "threshold": 10485760
                    }
                },
                "hystrix": {
                    "status": "UP"
                },
                "liveness": {
                    "status": "UP"
                },
                "ping": {
                    "status": "UP"
                },
                "refreshScope": {
                    "status": "UP"
                },
                "serviceAuth": {
                    "status": "UP"
                }
            }
        }
    }
}' \
http://localhost:8991/__admin/mappings/new

# fee-register response for oral fee
curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "url": "/fees-register/fees/lookup?channel=default&event=issue&jurisdiction1=tribunal&jurisdiction2=immigration%20and%20asylum%20chamber&keyword=ABC&service=other"
    },
    "response": {
        "status": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "jsonBody": {
            "code": "FEE0238",
            "description": "Appeal determined with a hearing",
            "version": 2,
            "fee_amount": "140.00"
        }
    }
}' \
http://localhost:8991/__admin/mappings/new

# make responses persistent in Docker volume
curl -X POST http://localhost:8991/__admin/mappings/save
