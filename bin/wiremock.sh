#!/usr/bin/env bash

# Setup Wiremock responses for Professional Reference Data based on existing Idam users

share_case_org_code="$(sh ./idam-user-token.sh "${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}" "${TEST_LAW_FIRM_SHARE_CASE_ORG_PASSWORD}")"
share_case_org_id="$(curl --silent --show-error -X GET "${IDAM_URL}/details" -H "accept: application/json" -H "authorization: Bearer ${share_case_org_code}" | jq -r .id )"

share_case_a_code="$(sh ./idam-user-token.sh "${TEST_LAW_FIRM_SHARE_CASE_A_USERNAME}" "${TEST_LAW_FIRM_SHARE_CASE_A_PASSWORD}")"
share_case_a_id="$(curl --silent --show-error -X GET "${IDAM_URL}/details" -H "accept: application/json" -H "authorization: Bearer ${share_case_a_code}" | jq -r .id )"

share_case_b_code="$(sh ./idam-user-token.sh "${TEST_LAW_FIRM_SHARE_CASE_B_USERNAME}" "${TEST_LAW_FIRM_SHARE_CASE_B_PASSWORD}")"
share_case_b_id="$(curl --silent --show-error -X GET "${IDAM_URL}/details" -H "accept: application/json" -H "authorization: Bearer ${share_case_b_code}" | jq -r .id )"

# role-assignment-api. It's used for the RWA-318, RWA-319 and RWA-340 tickets
curl -X POST --data '{
    "request": {
        "method": "POST",
        "urlPath": "/am/role-assignments/query",
        "headers": {
              "Content-Type": {
                "equalTo": "application/json"
              },
              "Authorization": {
                "contains": "Bearer"
              },
              "ServiceAuthorization": {
                "contains": "Bearer"
              }
        }
    },
    "response": {
        "status": 200,
        "headers": {
          "Content-Type": "application/json"
        },
        "jsonBody": {
          "roleAssignmentResponse": [
            {
              "id": "a5b06398-211e-409a-b67b-2dd96aac340b",
              "actorIdType": "IDAM",
              "actorId": "ef55eb66-cf39-4019-be0e-dad496f8d679",
              "roleType": "ORGANISATION",
              "roleName": "tribunal-caseworker",
              "classification": "PUBLIC",
              "grantType": "STANDARD",
              "roleCategory": "STAFF",
              "readOnly": false,
              "created": "2021-01-25T12:47:04.447419Z",
              "attributes": {
                "primaryLocation": "765324",
                "jurisdiction": "IA"
              }
            },
            {
              "id": "01c70226-e60a-49ad-95e1-58518e70fea1",
              "actorIdType": "IDAM",
              "actorId": "ed04c6e1-a698-43ef-88dc-ec5e2259174d",
              "roleType": "ORGANISATION",
              "roleName": "tribunal-caseworker",
              "classification": "PUBLIC",
              "grantType": "STANDARD",
              "roleCategory": "STAFF",
              "readOnly": false,
              "created": "2021-01-25T12:47:09.036703Z",
              "attributes": {
                "primaryLocation": "765324",
                "jurisdiction": "IA",
                "region": "east-england"
              }
            },
            {
              "id": "baf8d3b9-681c-4a16-945f-599b4fb12b46",
              "actorIdType": "IDAM",
              "actorId": "a3a48ddf-1333-417c-a2d5-217c0769bb90",
              "roleType": "ORGANISATION",
              "roleName": "tribunal-caseworker",
              "classification": "PUBLIC",
              "grantType": "STANDARD",
              "roleCategory": "STAFF",
              "readOnly": false,
              "created": "2021-01-25T12:47:12.945805Z",
              "attributes": {
                "primaryLocation": "765324",
                "jurisdiction": "IA"
              }
            },
            {
              "id": "fe39073e-b4d3-4f77-be05-51b6a4dcc116",
              "actorIdType": "IDAM",
              "actorId": "89b13415-97a7-4c4b-9af9-3052fb1e426c",
              "roleType": "ORGANISATION",
              "roleName": "tribunal-caseworker",
              "classification": "PUBLIC",
              "grantType": "STANDARD",
              "roleCategory": "STAFF",
              "readOnly": false,
              "created": "2021-01-25T12:47:17.455627Z",
              "attributes": {
                "primaryLocation": "765324",
                "jurisdiction": "IA",
                "region": "east-england"
              }
            },
            {
              "id": "d8580b8b-ffa8-4bcd-85fc-673959ffafe8",
              "actorIdType": "IDAM",
              "actorId": "6806c6b9-c6af-435e-b586-fcbdb94effae",
              "roleType": "ORGANISATION",
              "roleName": "tribunal-caseworker",
              "classification": "PUBLIC",
              "grantType": "STANDARD",
              "roleCategory": "STAFF",
              "readOnly": false,
              "created": "2021-01-25T12:47:24.807941Z",
              "attributes": {
                "primaryLocation": "765324",
                "jurisdiction": "IA"
              }
            }
          ]
        }
    }

}' \
http://localhost:8991/__admin/mappings/new

# rd-casewoker-ref-api. It's used for the RWA-318, RWA-319 and RWA-340 tickets
curl -X POST \
  --data '{
          "request": {
            "method": "POST",
            "urlPath": "/refdata/case-worker/users/fetchUsersById",
            "headers": {
              "Content-Type": {
                "equalTo": "application/json"
              },
              "Authorization": {
                "contains": "Bearer"
              },
              "ServiceAuthorization": {
                "contains": "Bearer"
              }
            },
            "bodyPatterns" : [{
              "equalToJson" : { "userIds": ["${json-unit.any-string}"]}
            }]
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
              "caseWorkerId": "string",
              "caseWorkerLocations": [
                {
                  "caseWorkerId": "string",
                  "caseWorkerLocationId": 0,
                  "createdDate": "2021-01-18T16:35:45.194Z",
                  "lastUpdate": "2021-01-18T16:35:45.194Z",
                  "location": "string",
                  "locationId": 0,
                  "primaryFlag": true
                }
              ],
              "caseWorkerRoles": [
                {
                  "caseWorkerId": "string",
                  "caseWorkerRoleId": 0,
                  "createdDate": "2021-01-18T16:35:45.194Z",
                  "lastUpdate": "2021-01-18T16:35:45.194Z",
                  "primaryFlag": true,
                  "roleId": 0,
                  "roleType": {
                    "caseWorkerIdamRoleAssociations": [
                      {
                        "createdDate": "2021-01-18T16:35:45.194Z",
                        "cwIdamRoleAssociationId": 0,
                        "idamRole": "string",
                        "lastUpdate": "2021-01-18T16:35:45.194Z",
                        "roleId": 0,
                        "serviceCode": "string"
                      }
                    ],
                    "caseWorkerRoles": [
                      null
                    ],
                    "createdDate": "2021-01-18T16:35:45.194Z",
                    "description": "string",
                    "lastUpdate": "2021-01-18T16:35:45.194Z",
                    "roleId": 0
                  }
                }
              ],
              "caseWorkerWorkAreas": [
                {
                  "areaOfWork": "string",
                  "caseWorkerId": "string",
                  "caseWorkerWorkAreaId": 0,
                  "createdDate": "2021-01-18T16:35:45.194Z",
                  "lastUpdate": "2021-01-18T16:35:45.194Z",
                  "serviceCode": "string"
                }
              ],
              "createdDate": "2021-01-18T16:35:45.194Z",
              "emailId": "string",
              "firstName": "firstName",
              "lastName": "lastName",
              "lastUpdate": "2021-01-18T16:35:45.194Z",
              "region": "string",
              "regionId": 0,
              "suspended": true,
              "userType": {
                "caseWorkerProfiles": [
                  null
                ],
                "createdDate": "2021-01-18T16:35:45.194Z",
                "description": "string",
                "lastUpdate": "2021-01-18T16:35:45.194Z",
                "userTypeId": 0
              },
              "userTypeId": 0
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "urlPath": "/refdata/external/v1/organisations/users"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
              "organisationIdentifier": "D1HRWLA",
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

# fee-register response for fee with hearing
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
            "code": "FEE0239",
            "description": "Appeal determined with a hearing",
            "version": 1,
            "fee_amount": "140.00"
        }
    }
}' \
http://localhost:8991/__admin/mappings/new

# fee-register response for fee without hearing
curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "url": "/fees-register/fees/lookup?channel=default&event=issue&jurisdiction1=tribunal&jurisdiction2=immigration%20and%20asylum%20chamber&keyword=DEF&service=other"
    },
    "response": {
        "status": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "jsonBody": {
            "code": "FEE0373",
            "description": "Notice of Appeal - appellant consents without hearing A",
            "version": 1,
            "fee_amount": "80.00"
        }
    }
}' \
http://localhost:8991/__admin/mappings/new

# pba account successful
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "url": "/credit-account-payments",
            "bodyPatterns": [ {
              "contains": "PBA0087535"
              }
            ],
            "headers": {
              "Content-Type": {
                "equalTo": "application/json"
              }
            }
          },
          "response": {
            "status": 201,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
                "reference": "RC-1590-6786-1063-9996",
                "date_created": "2020-05-28T15:10:10.694+0000",
                "status": "Success",
                "payment_group_reference": "2020-1590678609071",
                "status_histories": [
                  {
                    "status": "success",
                    "date_created": "2020-05-28T15:10:10.700+0000",
                    "date_updated": "2020-05-28T15:10:10.700+0000"
                  }
                ]
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

# pba account successful
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "url": "/credit-account-payments",
            "bodyPatterns": [ {
              "contains": "PBA0088063"
              }
            ],
            "headers": {
              "Content-Type": {
                "equalTo": "application/json"
              }
            }
          },
          "response": {
            "status": 201,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
                "reference": "RC-1590-6786-1063-9996",
                "date_created": "2020-05-28T15:10:10.694+0000",
                "status": "Success",
                "payment_group_reference": "2020-1590678609071",
                "status_histories": [
                  {
                    "status": "success",
                    "date_created": "2020-05-28T15:10:10.700+0000",
                    "date_updated": "2020-05-28T15:10:10.700+0000"
                  }
                ]
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

# pba account on hold
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "url": "/credit-account-payments",
            "bodyPatterns": [ {
              "contains": "PBA0087442"
              }
            ],
            "headers": {
              "Content-Type": {
                "equalTo": "application/json"
              }
            }
          },
          "response": {
            "status": 403,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
                "reference": "RC-1590-6786-1063-9996",
                "date_created": "2020-05-28T15:10:10.694+0000",
                "status": "Failed",
                "payment_group_reference": "2020-1590678609071",
                "status_histories": [
                  {
                    "status": "failed",
                    "error_code": "CA-E0004",
                    "error_message": "Your account is on hold",
                    "date_created": "2020-05-28T15:10:10.700+0000",
                    "date_updated": "2020-05-28T15:10:10.700+0000"
                  }
                ]
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

# pba account deleted
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "url": "/credit-account-payments",
            "bodyPatterns": [ {
              "contains": "PBA0087240"
              }
            ],
            "headers": {
              "Content-Type": {
                "equalTo": "application/json"
              }
            }
          },
          "response": {
            "status": 403,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
                "reference": "RC-1590-6786-1063-9996",
                "date_created": "2020-05-28T15:10:10.694+0000",
                "status": "Failed",
                "payment_group_reference": "2020-1590678609071",
                "status_histories": [
                  {
                    "status": "failed",
                    "error_code": "CA-E0004",
                    "error_message": "Your account is deleted",
                    "date_created": "2020-05-28T15:10:10.700+0000",
                    "date_updated": "2020-05-28T15:10:10.700+0000"
                  }
                ]
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

#PBA accounts
curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "urlPath": "/refdata/external/v1/organisations/pbas"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
              "organisationEntityResponse" : {
                "organisationIdentifier": "0UFUG4Z",
                "name": "ia-legal-rep-org",
                "status": "ACTIVE",
                "sraId": null,
                "sraRegulated": false,
                "companyNumber": null,
                "companyUrl": null,
                "superUser": {
                  "firstName": "legalrep",
                  "lastName": "orgcreator",
                  "email": "'"${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}"'"
                },
                "paymentAccount": [
                  "PBA0087535",
                  "PBA0087240",
                  "PBA0088063",
                  "PBA0087442"
                ],
                "contactInformation": [
                  {
                    "addressLine1": "45 Lunar House",
                    "addressLine2": "Spa Road",
                    "addressLine3": "Woolworth",
                    "country": "UK",
                    "county": "London",
                    "postCode": "SE1 3HP",
                    "townCity": "London"
                  }
                ]
              }
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

#PBA accounts and OrganisationPolicy
curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "urlPath": "/refdata/external/v1/organisations"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
                "organisationIdentifier": "D1HRWLA",
                "name": "ia-legal-rep-org",
                "status": "ACTIVE",
                "sraRegulated": false,
                "superUser": {
                  "firstName": "legalrep",
                  "lastName": "orgcreator",
                  "email": "'"${TEST_LAW_FIRM_SHARE_CASE_ORG_USERNAME}"'"
                },
                "paymentAccount": [
                  "PBA0087535",
                  "PBA0087240",
                  "PBA0088063",
                  "PBA0087442"
                ],
                "contactInformation": [
                  {
                    "addressLine1": "45 Lunar House",
                    "addressLine2": "Spa Road",
                    "addressLine3": "Woolworth",
                    "country": "UK",
                    "county": "London",
                    "postCode": "SE1 3HP",
                    "townCity": "London",
                    "dxAddress": []
                  }
                ]
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

#Assign Case User and Role Ownership
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "urlPath": "/case-users"
          },
          "response": {
            "status": 201,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
              "status_message": "Case-User-Role assignments created successfully"
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new

# make responses persistent in Docker volume
curl -X POST http://localhost:8991/__admin/mappings/save
