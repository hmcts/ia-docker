#!/usr/bin/env bash

# Setup Wiremock responses for Panel Member Type

# WHEN CALLING THIS ENDPOINT IN DEMO IT DOESN'T RETURN ANYTHING IF "BFA1" IS PASSED AS SERVICE ID
# (EXPECTED TO BE 404 AS THERE ARE NO PANEL MEMBER TYPES FOR IAC)

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/PanelMemberType",
        "queryParameters": {
            "serviceId": {
                "equalTo": "BFA1"
            },
            "isChildRequired": {
                "equalTo": "Y"
            }
        }
    },
    "response": {
        "status": 404,  
        "headers": {
          "Content-Type": "application/json"
        }
    }
}' \
http://localhost:8991/__admin/mappings/new