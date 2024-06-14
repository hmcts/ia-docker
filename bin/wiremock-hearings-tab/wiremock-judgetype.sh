#!/usr/bin/env bash

# Setup Wiremock responses for Judge Type

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/JudgeType",
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
            "category_key": "JudgeType",
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
        }
    ]
}
        }
}' \
  http://localhost:8991/__admin/mappings/new

