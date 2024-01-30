#!/usr/bin/env bash

# Setup Wiremock responses for Hearing Types

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/HearingType",
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
            "category_key": "HearingType",
            "key": "BFA1-CMR",
            "value_en": "Case Management Review",
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
            "category_key": "HearingType",
            "key": "BFA1-COS",
            "value_en": "Costs",
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
            "category_key": "HearingType",
            "key": "BFA1-BAI",
            "value_en": "Bail",
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
            "category_key": "HearingType",
            "key": "BFA1-SUB",
            "value_en": "Substantive",
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