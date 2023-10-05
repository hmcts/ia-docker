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
            "key": "hearing-type-change",
            "value_en": "Different hearing mode required",
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
            "key": "postponement-granted",
            "value_en": "Application for postponement granted",
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
            "key": "no-interpreter-available",
            "value_en": "No interpreter available in required language",
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
            "key": "court-closure",
            "value_en": "Court disruption/closure",
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
            "key": "requirements-change",
            "value_en": "Change to hearing request/requirements",
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
            "key": "interpreter-change",
            "value_en": "Change to interpreter requirements",
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
            "key": "hearing-centre-transfer",
            "value_en": "Hearing Centre transfer directed/granted",
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
            "key": "expedite-granted",
            "value_en": "Application to expedite granted",
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
            "key": "other",
            "value_en": "Other",
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