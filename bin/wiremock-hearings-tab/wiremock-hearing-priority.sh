#!/usr/bin/env bash

# Setup Wiremock responses for Hearing Priority

# THIS ACTUALLY RETURNS NOTHING (404) WHEN CALLED IN DEMO. THE RESPONSE CONTAINED IN THIS STUB IS
# WHAT IS RETURNED WITHOUT QUERY PARAMETERS

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/HearingPriority",
        "queryParameters": {
            "serviceId": {
                "equalTo": "BFA1"
            },
            "isChildRequired": {
                "equalTo": "N"
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
            "category_key": "HearingPriority",
            "key": "Standard",
            "value_en": "Standard",
            "value_cy": "Safonol",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "",
            "parent_key": "",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingPriority",
            "key": "Urgent",
            "value_en": "Urgent",
            "value_cy": "Brys",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "",
            "parent_key": "",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingPriority",
            "key": "Urgent",
            "value_en": "Urgent",
            "value_cy": "Brys",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "",
            "parent_key": "",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingPriority",
            "key": "Standard",
            "value_en": "Standard",
            "value_cy": "Safonol",
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


# "response": {
#         "status": 404,  
#         "headers": {
#           "Content-Type": "application/json"
#         }
#     }