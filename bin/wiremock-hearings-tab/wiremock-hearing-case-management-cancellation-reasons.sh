#!/usr/bin/env bash

# Setup Wiremock responses for Hearing cancellation reasons

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/lov/categories/CaseManagementCancellationReasons",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "withdraw",
                    "value_en": "Withdrawn",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "reclassified",
                    "value_en": "Reclassified",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "ra-not-met",
                    "value_en": "Reasonable adjustment not met",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "evidence-contention",
                    "value_en": "Expert evidence in contention",
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
                    "category_key": "CaseManagementCancellationReasons",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "joh-not-attend",
                    "value_en": "No judge available/non attendance",
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
                    "category_key": "CaseManagementCancellationReasons",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "public-health",
                    "value_en": "Public health emergency",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "evidence-required",
                    "value_en": "Expert evidence required",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "new-issue",
                    "value_en": "New issue raised",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "detention-facility-transfer",
                    "value_en": "Appellant transferred to a different detention facility",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "abandoned",
                    "value_en": "Appeal abandoned",
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
                    "category_key": "CaseManagementCancellationReasons",
                    "key": "no-valid-appeal",
                    "value_en": "No valid appeal",
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
    }
}' \
  http://localhost:8991/__admin/mappings/new

