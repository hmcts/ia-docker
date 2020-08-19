#!/usr/bin/env bash

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

# fee-register response for fee with hearinng
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
            "code": "FEE0456",
            "description": "Appeal determined with a hearing",
            "version": 2,
            "fee_amount": "80.00"
        }
    }
}' \
http://localhost:8991/__admin/mappings/new

curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "url": "/credit-account-payments",
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
                  "PBA1234567",
                  "PBA7654321",
                  "PBA1232123"
                ],
                "contactInformation": null
              }
            }
          }
        }' \
http://localhost:8991/__admin/mappings/new


### login to EXUI
# CCD service
curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "urlPath": "/services"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": [
  {
    "label": "ccd_gateway",
    "description": "CCD Gateway",
    "allowedRoles": [
      "ccd-import",
      "caseworker",
      "caseworker-ia",
      "caseworker-ia-legalrep-solicitor",
      "pui-case-manager"
    ],
    "onboardingRoles": [],
    "oauth2ClientId": "ccd_gateway",
    "oauth2Scope": "CCD scope manage-user create-user openid profile roles",
    "selfRegistrationAllowed": false
  }
]
          }
        }' \
http://localhost:8991/__admin/mappings/new


# authenticate
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "urlPath": "/authenticate"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json",
              "Set-Cookie": "Idam.Session=eyJ0eXAiOiJKV1QiLCJ6aXAiOiJOT05FIiwia2lkIjoiMWVyMFdSd2dJT1RBRm9qRTRyQy9mYmVLdTNJPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJpYS5sZWdhbHJlcC5vcmdjcmVhdG9yQGdtYWlsLmNvbSIsImN0cyI6Ik9BVVRIMl9TVEFURUxFU1NfR1JBTlQiLCJhdXRoX2xldmVsIjowLCJhdWRpdFRyYWNraW5nSWQiOiI1YTljMGQzMS03ZTQ5LTQxMzAtOTBjYy1mM2VlOTc0MDNkN2MtMTE2NjQ1MDciLCJpc3MiOiJodHRwczovL2Zvcmdlcm9jay1hbS5zZXJ2aWNlLmNvcmUtY29tcHV0ZS1pZGFtLWFhdDIuaW50ZXJuYWw6ODQ0My9vcGVuYW0vb2F1dGgyL3JlYWxtcy9yb290L3JlYWxtcy9obWN0cyIsInRva2VuTmFtZSI6ImFjY2Vzc190b2tlbiIsInRva2VuX3R5cGUiOiJCZWFyZXIiLCJhdXRoR3JhbnRJZCI6Ink4Ynk1aDZiZnhHd0NGYVNqME5ld0pUbFFQSSIsImF1ZCI6ImlhYyIsIm5iZiI6MTU5NzgyNzE4NywiZ3JhbnRfdHlwZSI6ImF1dGhvcml6YXRpb25fY29kZSIsInNjb3BlIjpbIm9wZW5pZCIsInByb2ZpbGUiLCJyb2xlcyJdLCJhdXRoX3RpbWUiOjE1OTc4MjcxODcsInJlYWxtIjoiL2htY3RzIiwiZXhwIjoxNTk3ODU1OTg3LCJpYXQiOjE1OTc4MjcxODcsImV4cGlyZXNfaW4iOjI4ODAwLCJqdGkiOiJfby02V2o5TmNKVW1HQlZzZHkySHZrSlhMaEkifQ.EwYiI2Yk7XLjTKvZHTVc7MikfH_RCWzV7UKrRUQL5f7EZ7Gl_MnKgjllDlVh7ik7r3gqqYwWXk_eC0mWgsWrOPIqz9xNRx1fVf9Q07MvvWPaySk32M28raBGup9ClpYOyVEs-2vnBNa7WnkUqDDpjuss6JzYcdjm038I2SiOuhAa0Qv1kzoC6H-WfErwXnMugVUFFWqqarC9dH9NNdgunJQqjcG3BDLU_mjtj0ACJ1aSgVvTCXDg94_Y6IxPJfE06P27g78tj4GlacEc4hHH0uyUTQdPbAqrHp0r7_NRDYOpy-t9DuZ8_bmr3WCio8ntmeOiTgoeOZ9i6kLvDUuPPw"
            },
            "jsonBody": {}
          }
        }' \
http://localhost:8991/__admin/mappings/new

# policies
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "urlPath": "/api/v1/policies/evaluate"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": []
          }
        }' \
http://localhost:8991/__admin/mappings/new


# authorize
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "urlPath": "/o/authorize"
          },
          "response": {
            "status": 302,
            "headers": {
              "Content-Type": "application/json",
              "Location": "http://localhost:3002/auth/oauth2/callback?code=ph4kYUTfFjjSinQEGvnP3jKEE4g&state=O74zMp3GLOtkmLC25ju_VD5Evs3Sj2fZYgekIjj09I0&client_id=ccd_gateway&username=ccd-import%40fake.hmcts.net&iss=http%3A%2F%2Fwiremock:8080%2Fo"
            },
            "jsonBody": {}
          }
        }' \
http://localhost:8991/__admin/mappings/new



### import CCD defs
# token path
curl -X POST \
--data '{
          "request": {
            "method": "POST",
            "urlPath": "/o/token"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {"access_token":"eyJ0eXAiOiJKV1QiLCJ6aXAiOiJOT05FIiwia2lkIjoiYi9PNk92VnYxK3krV2dySDVVaTlXVGlvTHQwPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJjY2QtaW1wb3J0QGZha2UuaG1jdHMubmV0IiwiYXV0aF9sZXZlbCI6MCwiYXVkaXRUcmFja2luZ0lkIjoiMWViYTE4MjgtZTU4Mi00NzE4LWE0MWQtMmM0MjBhMjY3NDI2IiwiaXNzIjoiaHR0cDovL2ZyLWFtOjgwODAvb3BlbmFtL29hdXRoMi9obWN0cyIsInRva2VuTmFtZSI6ImFjY2Vzc190b2tlbiIsInRva2VuX3R5cGUiOiJCZWFyZXIiLCJhdXRoR3JhbnRJZCI6ImRiNTEzMjgzLWZiMDctNGMyMi04OWM3LTAxYTY0YWQ4M2M1MCIsImF1ZCI6ImNjZF9nYXRld2F5IiwibmJmIjoxNTk3ODQ5Njc3LCJncmFudF90eXBlIjoicGFzc3dvcmQiLCJzY29wZSI6WyJvcGVuaWQiLCJwcm9maWxlIiwicm9sZXMiXSwiYXV0aF90aW1lIjoxNTk3ODQ5Njc3LCJyZWFsbSI6Ii9obWN0cyIsImV4cCI6MTU5Nzg3ODQ3NywiaWF0IjoxNTk3ODQ5Njc3LCJleHBpcmVzX2luIjoyODgwMCwianRpIjoiODhjYmMzYmUtMGFiMy00ZTlmLWIzYjctOTNiODYzMWNlNWM3In0.Z8U2jxmeTUd3GUQGXSYkOu_sdHTBxnY1W6sf-C5fXN5FhMXpndBE6Ffpa0a3spKhRn_mhkDD8nxEN4vRgbr51T49zWGd7ViSg1ERuwwzz7k66J0c3n0woYjNOJzbCbwWEGg2XOb2nRyLvqdzu3OBMjIXSOT8CegxnZsCcnmlX-1xB4J5N7ft3KYqJZZXxlzPzrEimy2GjRcKZI4in8iwomuyrB4BgbwOJv9SxeIFRA6dK3maovCTEC1Yp58y43xhQ_j7fArjZtsI85uezq_Lv8asGH7CF9Vn4ZaBjs4AJUBVm2mOpKU7dt_evpooFQDY_y2DhE4STN--0EwAu5rccw","refresh_token":"eyJ0eXAiOiJKV1QiLCJ6aXAiOiJOT05FIiwia2lkIjoiYi9PNk92VnYxK3krV2dySDVVaTlXVGlvTHQwPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJjY2QtaW1wb3J0QGZha2UuaG1jdHMubmV0IiwiYXV0aF9sZXZlbCI6MCwiYXVkaXRUcmFja2luZ0lkIjoiNjY1ZWE4ZDYtM2NiYi00YzRiLThhMzUtODhmNzhmMjdhYTdkIiwiaXNzIjoiaHR0cDovL2ZyLWFtOjgwODAvb3BlbmFtL29hdXRoMi9obWN0cyIsInRva2VuTmFtZSI6InJlZnJlc2hfdG9rZW4iLCJ0b2tlbl90eXBlIjoiQmVhcmVyIiwiYXV0aEdyYW50SWQiOiJkYjUxMzI4My1mYjA3LTRjMjItODljNy0wMWE2NGFkODNjNTAiLCJhdWQiOiJjY2RfZ2F0ZXdheSIsIm5iZiI6MTU5Nzg0OTY3NywiZ3JhbnRfdHlwZSI6InBhc3N3b3JkIiwic2NvcGUiOlsib3BlbmlkIiwicHJvZmlsZSIsInJvbGVzIl0sImF1dGhfdGltZSI6MTU5Nzg0OTY3NywicmVhbG0iOiIvaG1jdHMiLCJleHAiOjE1OTg0NTQ0NzcsImlhdCI6MTU5Nzg0OTY3NywiZXhwaXJlc19pbiI6NjA0ODAwLCJqdGkiOiJhYjExNTc1MS05NTI4LTQ3MWUtOTM0Mi05OGE1NGQ1M2NmMzUifQ.MbONTwh4z6tI5rC9ntSPszVzSnMvXL9WoIULr4ZrQnrkXz9cPGi1xVJCCeWte_eacGbcuy85eb02VLn_0_HKMbdWIEsvyQ5O6sTq62xGcuYOBXKUzKkgAiIm-n9v97QT2-68XxPylhfjdOBRE8-dkoaasQPpHodnSVzTakuy1rEiUElW57FTuO9bEyaC0p0ShuoxHQNt0KLZl0LqkcXi2oAz6NRHmdyC6PA8emh_NLDNjhcefGYgtWbuuKAH9r0FlzX6L7kEmeXFH_tgX6I0Y16y0uWKva5GRPynBNGTX9sIn3FXpODe0j1sr0o0psuExZshpOU00nKEF4y0TGL9rg","scope":"openid profile roles","id_token":"eyJ0eXAiOiJKV1QiLCJraWQiOiJiL082T3ZWdjEreStXZ3JINVVpOVdUaW9MdDA9IiwiYWxnIjoiUlMyNTYifQ.eyJhdF9oYXNoIjoiOTF3UmNnNGl0eWlsOElTaHl1MjQ2QSIsInN1YiI6ImNjZC1pbXBvcnRAZmFrZS5obWN0cy5uZXQiLCJhdWRpdFRyYWNraW5nSWQiOiI4MjRmZWVhMS1jOTk3LTRmYzktYjEwYS1jMTE0MDdmZmRkODYtMTA0MjgiLCJyb2xlcyI6WyJjY2QtaW1wb3J0Il0sImlzcyI6Imh0dHA6Ly9mci1hbTo4MDgwL29wZW5hbS9vYXV0aDIvaG1jdHMiLCJ0b2tlbk5hbWUiOiJpZF90b2tlbiIsImdpdmVuX25hbWUiOiJDQ0QiLCJ1aWQiOiI0MGI2NzYwYy01YjUyLTQ4ZmEtYjJlYy0zYzgyZTUxNDdmMTgiLCJhdWQiOiJjY2RfZ2F0ZXdheSIsImF6cCI6ImNjZF9nYXRld2F5IiwiYXV0aF90aW1lIjoxNTk3ODQ5Njc3LCJuYW1lIjoiQ0NEIEltcG9ydCIsInJlYWxtIjoiL2htY3RzIiwiZXhwIjoxNTk3ODc4NDc3LCJ0b2tlblR5cGUiOiJKV1RUb2tlbiIsImZhbWlseV9uYW1lIjoiSW1wb3J0IiwiaWF0IjoxNTk3ODQ5Njc3fQ.QudBUu6XzYT2MmrR1Wa1BPVZyHLldyP5Sum7-IwB7vm5jL0NBPi-G92tDfyO0mINlorKNmOBKfLzxIEQ8tBncpy54JKGIeUGR7MlcP2RNfS-j_1YjDPwuniXonScmYFm49nJp19D8RlOyP2Prbi5UYeG61-267WecZa5fYDjRgg5B-2XcGHAJyvvfzALKiarxmEGbVpAQp2o4ywte3927v4pzMC43gci2eJ444xYG-rRH1HwgEOjC18yMMl9M49Q58aMV-Lu0Wsauy47-VDQqvB9ZD051HpYiMIFoBEgeEcGYi7LqjV6QxsuYem8CtBflFRcUwfO4tYlsYCnM5lvxw","token_type":"Bearer","expires_in":"28799"}
          }
        }' \
http://localhost:8991/__admin/mappings/new

# userinfo
curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "urlPath": "/o/userinfo"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody":
            {
  "sub": "ccd-import@fake.hmcts.net",
  "uid": "9238c579-18bd-49dc-ba2f-ab529825cde2",
  "roles": [
    "ccd-import"
  ],
  "name": "CCD Import",
  "given_name": "CCD",
  "family_name": "Import"
}
          }
        }' \
http://localhost:8991/__admin/mappings/new

# open-id-configuration
curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "urlPath": "/o/.well-known/openid-configuration"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody": {
  "request_parameter_supported": true,
  "claims_parameter_supported": false,
  "scopes_supported": [
    "acr",
    "openid",
    "profile",
    "roles",
    "authorities",
    "email"
  ],
  "issuer": "http://wiremock:8080/o",
  "id_token_encryption_enc_values_supported": [
    "A256GCM",
    "A192GCM",
    "A128GCM",
    "A128CBC-HS256",
    "A192CBC-HS384",
    "A256CBC-HS512"
  ],
  "acr_values_supported": [],
  "authorization_endpoint": "http://wiremock:8080/o/authorize",
  "request_object_encryption_enc_values_supported": [
    "A256GCM",
    "A192GCM",
    "A128GCM",
    "A128CBC-HS256",
    "A192CBC-HS384",
    "A256CBC-HS512"
  ],
  "rcs_request_encryption_alg_values_supported": [
    "RSA-OAEP",
    "RSA-OAEP-256",
    "A128KW",
    "RSA1_5",
    "A256KW",
    "dir",
    "A192KW"
  ],
  "claims_supported": [],
  "rcs_request_signing_alg_values_supported": [
    "ES384",
    "HS256",
    "HS512",
    "ES256",
    "RS256",
    "HS384",
    "ES512"
  ],
  "token_endpoint_auth_methods_supported": [
    "client_secret_post",
    "private_key_jwt",
    "client_secret_basic"
  ],
  "token_endpoint": "http://wiremock:8080/o/token",
  "response_types_supported": [
    "code token id_token",
    "code",
    "code id_token",
    "device_code",
    "id_token",
    "code token",
    "token",
    "token id_token"
  ],
  "request_uri_parameter_supported": true,
  "rcs_response_encryption_enc_values_supported": [
    "A256GCM",
    "A192GCM",
    "A128GCM",
    "A128CBC-HS256",
    "A192CBC-HS384",
    "A256CBC-HS512"
  ],
  "end_session_endpoint": "http://wiremock:8080/o/endSession",
  "rcs_request_encryption_enc_values_supported": [
    "A256GCM",
    "A192GCM",
    "A128GCM",
    "A128CBC-HS256",
    "A192CBC-HS384",
    "A256CBC-HS512"
  ],
  "version": "3.0",
  "rcs_response_encryption_alg_values_supported": [
    "RSA-OAEP",
    "RSA-OAEP-256",
    "A128KW",
    "A256KW",
    "RSA1_5",
    "dir",
    "A192KW"
  ],
  "userinfo_endpoint": "http://wiremock:8080/o/userinfo",
  "id_token_encryption_alg_values_supported": [
    "RSA-OAEP",
    "RSA-OAEP-256",
    "A128KW",
    "A256KW",
    "RSA1_5",
    "dir",
    "A192KW"
  ],
  "jwks_uri": "http://wiremock:8080/o/jwks",
  "subject_types_supported": [
    "public"
  ],
  "id_token_signing_alg_values_supported": [
    "ES384",
    "HS256",
    "HS512",
    "ES256",
    "RS256",
    "HS384",
    "ES512"
  ],
  "request_object_signing_alg_values_supported": [
    "ES384",
    "HS256",
    "HS512",
    "ES256",
    "RS256",
    "HS384",
    "ES512"
  ],
  "request_object_encryption_alg_values_supported": [
    "RSA-OAEP",
    "RSA-OAEP-256",
    "A128KW",
    "RSA1_5",
    "A256KW",
    "dir",
    "A192KW"
  ],
  "rcs_response_signing_alg_values_supported": [
    "ES384",
    "HS256",
    "HS512",
    "ES256",
    "RS256",
    "HS384",
    "ES512"
  ]
}
          }
        }' \
http://localhost:8991/__admin/mappings/new

# jwks
curl -X POST \
--data '{
          "request": {
            "method": "GET",
            "urlPath": "/o/jwks"
          },
          "response": {
            "status": 200,
            "headers": {
              "Content-Type": "application/json"
            },
            "jsonBody":
            {
  "keys": [
    {
      "alg": "RSA-OAEP-256",
      "kty": "RSA",
      "use": "enc",
      "kid": "GkSBl5DAe0JppgudqH3OdZnUWb4=",
      "n": "o1uXz14_oHyRkBM1I97f45nd6wvHfWGNf51qQe0_BcIBoIqokXCPAp3HJG492xUb7wNuTc8aGTbpomtIT3cSnF6qZCrE08x4P43T_ymOS5VhbA8hD-2zaJOJY5WfvDOUTgBJ--6mo5HmmO5gxY2j-l3gvtA2NQIqgC30fXUczKI_7quij8RiBfgAfs4CF9QydxiyilaGRb_N73PzBNdzwEASAOa3zMUJ7PUK2okH8yVIFQYOCTygdgOwcqbHTltoFo4FDwtEY_lJQtJtG27fh4sWii0EifQW9RlKfBOJKltocdGBasw5WbTuhItYG47eH9uPfzMG66qpWwArxi7KgQ",
      "e": "AQAB"
    },
    {
      "alg": "RSA-OAEP",
      "kty": "RSA",
      "use": "enc",
      "kid": "GkSBl5DAe0JppgudqH3OdZnUWb4=",
      "n": "o1uXz14_oHyRkBM1I97f45nd6wvHfWGNf51qQe0_BcIBoIqokXCPAp3HJG492xUb7wNuTc8aGTbpomtIT3cSnF6qZCrE08x4P43T_ymOS5VhbA8hD-2zaJOJY5WfvDOUTgBJ--6mo5HmmO5gxY2j-l3gvtA2NQIqgC30fXUczKI_7quij8RiBfgAfs4CF9QydxiyilaGRb_N73PzBNdzwEASAOa3zMUJ7PUK2okH8yVIFQYOCTygdgOwcqbHTltoFo4FDwtEY_lJQtJtG27fh4sWii0EifQW9RlKfBOJKltocdGBasw5WbTuhItYG47eH9uPfzMG66qpWwArxi7KgQ",
      "e": "AQAB"
    },
    {
      "alg": "RSA1_5",
      "kty": "RSA",
      "use": "enc",
      "kid": "GkSBl5DAe0JppgudqH3OdZnUWb4=",
      "n": "o1uXz14_oHyRkBM1I97f45nd6wvHfWGNf51qQe0_BcIBoIqokXCPAp3HJG492xUb7wNuTc8aGTbpomtIT3cSnF6qZCrE08x4P43T_ymOS5VhbA8hD-2zaJOJY5WfvDOUTgBJ--6mo5HmmO5gxY2j-l3gvtA2NQIqgC30fXUczKI_7quij8RiBfgAfs4CF9QydxiyilaGRb_N73PzBNdzwEASAOa3zMUJ7PUK2okH8yVIFQYOCTygdgOwcqbHTltoFo4FDwtEY_lJQtJtG27fh4sWii0EifQW9RlKfBOJKltocdGBasw5WbTuhItYG47eH9uPfzMG66qpWwArxi7KgQ",
      "e": "AQAB"
    },
    {
      "alg": "RS256",
      "kty": "RSA",
      "use": "sig",
      "kid": "b/O6OvVv1+y+WgrH5Ui9WTioLt0=",
      "n": "o1uXz14_oHyRkBM1I97f45nd6wvHfWGNf51qQe0_BcIBoIqokXCPAp3HJG492xUb7wNuTc8aGTbpomtIT3cSnF6qZCrE08x4P43T_ymOS5VhbA8hD-2zaJOJY5WfvDOUTgBJ--6mo5HmmO5gxY2j-l3gvtA2NQIqgC30fXUczKI_7quij8RiBfgAfs4CF9QydxiyilaGRb_N73PzBNdzwEASAOa3zMUJ7PUK2okH8yVIFQYOCTygdgOwcqbHTltoFo4FDwtEY_lJQtJtG27fh4sWii0EifQW9RlKfBOJKltocdGBasw5WbTuhItYG47eH9uPfzMG66qpWwArxi7KgQ",
      "e": "AQAB"
    },
    {
      "alg": "ES512",
      "kty": "EC",
      "use": "sig",
      "kid": "pZSfpEq8tQPeiIe3fnnaWnnr/Zc=",
      "crv": "P-521",
      "x": "AHdVKbNDHym-MiUh6caaod_ktp8PXN6g1zIKLzlaCSOZP82KKaQsfwltAKnMrw129nVx-2kt8x1J1pp1ADe9HtXt",
      "y": "AUqhRKcYvA6lElI3UrfqvpuhVsyEFBQ4cM_E9v4WGnRc_priiTVa_UC7YfCtQJT9F8Oc21v_i57Sp3Mq_vw5ueRd"
    },
    {
      "alg": "ES384",
      "kty": "EC",
      "use": "sig",
      "kid": "I4x/IijvdDsUZMghwNq2gC/7pYQ=",
      "crv": "P-384",
      "x": "k5wSvW_6JhOuCj-9PdDWdEA4oH90RSmC2GTliiUHAhXj6rmTdE2S-_zGmMFxufuV",
      "y": "XfbR-tRoVcZMCoUrkKtuZUIyfCgAy8b0FWnPZqevwpdoTzGQBOXSNi6uItN_o4tH"
    },
    {
      "alg": "ES256",
      "kty": "EC",
      "use": "sig",
      "kid": "Fol7IpdKeLZmzKtCEgi1LDhSIzM=",
      "crv": "P-256",
      "x": "N7MtObVf92FJTwYvY2ZvTVT3rgZp7a7XDtzT_9Rw7IA",
      "y": "uxNmyoocPopYh4k1FCc41yuJZVohxlhMo3KTIJVTP3c"
    }
  ]
}

          }
        }' \
http://localhost:8991/__admin/mappings/new

# make responses persistent in Docker volume
curl -X POST http://localhost:8991/__admin/mappings/save
