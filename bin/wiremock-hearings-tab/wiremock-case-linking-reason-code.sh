#!/usr/bin/env bash

# Setup Wiremock responses for Case Linking Reason Code

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/CaseLinkingReasonCode"
    },
    "response": {
        "status": 200,  
        "headers": {
          "Content-Type": "application/json"
        },
        "jsonBody": {
    "list_of_values": [
        {
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC002",
            "value_en": "Related proceedings",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC013",
            "value_en": "Point of law",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC001",
            "value_en": "Related appeal",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC012",
            "value_en": "First Tier Agency (FTA) Request",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC011",
            "value_en": "Findings of fact",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC010",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC009",
            "value_en": "Common circumstance",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC008",
            "value_en": "Shared evidence",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC007",
            "value_en": "Referred to the same judge",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC006",
            "value_en": "Guardian",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC017",
            "value_en": "Linked for a hearing",
            "value_cy": "",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "",
            "parent_key": "",
            "active_flag": "N",
            "child_nodes": null
        },
        {
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC005",
            "value_en": "Familial",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC016",
            "value_en": "Progressed as part of this lead case",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC004",
            "value_en": "Same child/ren",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC015",
            "value_en": "Case consolidated",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC003",
            "value_en": "Same Party",
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
            "category_key": "CaseLinkingReasonCode",
            "key": "CLRC014",
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