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
        "status": 200,
        "headers": {
          "Content-Type": "application/json"
        },
        "jsonBody": {
            "list_of_values": [
                {
                    "category_key": "PanelMemberType",
                    "key": "84",
                    "value_en": "Tribunal Judge",
                    "value_cy": "",
                    "hint_text_en": "",
                    "hint_text_cy": "",
                    "lov_order": null,
                    "parent_category": "",
                    "parent_key": "",
                    "active_flag": "Y",
                    "child_nodes": null
                },
                {
                    "category_key": "PanelMemberType",
                    "key": "65",
                    "value_en": "President of Tribunal",
                    "value_cy": "",
                    "hint_text_en": "",
                    "hint_text_cy": "",
                    "lov_order": null,
                    "parent_category": "",
                    "parent_key": "",
                    "active_flag": "Y",
                    "child_nodes": null
                },
                {
                    "category_key": "PanelMemberType",
                    "key": "",
                    "value_en": "Resident Immigration Judge",
                    "value_cy": "",
                    "hint_text_en": "",
                    "hint_text_cy": "",
                    "lov_order": null,
                    "parent_category": "",
                    "parent_key": "",
                    "active_flag": "Y",
                    "child_nodes": null
                }
            ]
        }
    }
}' \
http://localhost:8991/__admin/mappings/new