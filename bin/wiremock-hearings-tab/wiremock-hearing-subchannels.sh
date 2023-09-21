#!/usr/bin/env bash

# Setup Wiremock responses for Haring Sub Channel

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/HearingSubChannel",
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
            "category_key": "HearingSubChannel",
            "key": "TELOTHER",
            "value_en": "Telephone - Other",
            "value_cy": "Dros y Ffôn - Arall",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "HearingChannel",
            "parent_key": "TEL",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingSubChannel",
            "key": "VIDPVL",
            "value_en": "Prison Video",
            "value_cy": "Cyswllt Fideo â Charchar",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "HearingChannel",
            "parent_key": "VID",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingSubChannel",
            "key": "NA",
            "value_en": "Not in Attendance",
            "value_cy": "Ddim yn Bresennol",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "HearingChannel",
            "parent_key": "NA",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingSubChannel",
            "key": "VIDVHS",
            "value_en": "Video - Video Hearing Service",
            "value_cy": "Drwy Fideo - Gwasanaeth Gwrandawiadau Fideo",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "HearingChannel",
            "parent_key": "VID",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingSubChannel",
            "key": "VIDOTHER",
            "value_en": "Video - Other",
            "value_cy": "Drwy Fideo - Arall",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "HearingChannel",
            "parent_key": "VID",
            "active_flag": "Y",
            "child_nodes": null
        },
        {
            "category_key": "HearingSubChannel",
            "key": "INTER",
            "value_en": "In Person",
            "value_cy": "Yn Bersonol",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "HearingChannel",
            "parent_key": "INTER",
            "active_flag": "Y",
            "child_nodes": null
        }
    ]
}
        }
}' \
  http://localhost:8991/__admin/mappings/new

