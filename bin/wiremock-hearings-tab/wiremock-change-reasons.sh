#!/usr/bin/env bash

# Setup Wiremock responses for Change Reasons

# THIS ONE RETURNS EMPTY (404) WHEN serviceId IS "BFA1"
# THE MOCKED RESPONSE IS TEMPORARILY SET TO RETURN THE VALUES THAT IT WOULD RETURN
# WHEN CALLING THE SAME ENDPOINT BUT WITH serviceId set to "BBA3"
# IT WILL NEED TO GET UPDATED WHEN THE REF DATA FOR BFA1 IS UPLOADED

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/ChangeReasons",
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
            "category_key": "ChangeReasons",
            "key": "partyreq",
            "value_en": "Party requested change",
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
            "category_key": "ChangeReasons",
            "key": "adminreq",
            "value_en": "Admin requested change",
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
            "category_key": "ChangeReasons",
            "key": "adminerr",
            "value_en": "Admin error",
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
            "category_key": "ChangeReasons",
            "key": "judgereq",
            "value_en": "Judge requested change",
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