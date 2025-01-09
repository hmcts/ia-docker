#!/usr/bin/env bash

# Setup Wiremock responses for Case Type

curl -X POST --data '{
  "request":{
    "method":"GET",
    "urlPath":"/refdata/commondata/lov/categories/caseType",
    "queryParameters": {
        "serviceId": {
            "equalTo": "BFA1"
        },
        "isChildRequired": {
            "equalTo": "Y"
        }
    }
  },
  "response":{
    "status":200,
    "headers":{
      "Content-Type":"application/json"
    },
    "jsonBody":{
    "list_of_values": [
        {
            "category_key": "caseType",
            "key": "BFA1-TST",
            "value_en": "IAC-test",
            "value_cy": "",
            "hint_text_en": "",
            "hint_text_cy": "",
            "lov_order": null,
            "parent_category": "",
            "parent_key": "",
            "active_flag": "Y",
            "child_nodes": [
                {
                    "category_key": "caseSubType",
                    "key": "BFA1-TST",
                    "value_en": "IAC-test",
                    "value_cy": "",
                    "hint_text_en": "",
                    "hint_text_cy": "",
                    "lov_order": null,
                    "parent_category": "caseType",
                    "parent_key": "BFA1-TST",
                    "active_flag": "Y",
                    "child_nodes": null
                }
            ]
        }
    ]
}
  }
}' \
http://localhost:8991/__admin/mappings/new