#!/usr/bin/env bash

# Setup Wiremock responses for Reference Data

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/HearingChannel"
    },
    "response": {
        "status": 200,
        "headers": {
          "Content-Type": "application/json"
        },
        "jsonBody": {
    "list_of_values": [
        {
            "category_key": "HearingChannel",
            "key": "INTER",
            "value_en": "In Person",
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
            "category_key": "HearingChannel",
            "key": "TEL",
            "value_en": "Telephone",
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
            "category_key": "HearingChannel",
            "key": "VID",
            "value_en": "Video",
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
            "category_key": "HearingChannel",
            "key": "NA",
            "value_en": "Not in Attendance",
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
            "category_key": "HearingChannel",
            "key": "ONPPRS",
            "value_en": "On the Papers",
            "value_cy": "",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "",
            "parent_key": "",
            "active_flag": "D",
            "child_nodes": null
        }
    ]
}
    }
}' \
  http://localhost:8991/__admin/mappings/new
