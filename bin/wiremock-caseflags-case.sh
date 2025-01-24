#!/usr/bin/env bash

# call to retrieve all of the case-level caseflags pertaining service BFA1
curl -X POST --data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/commondata/caseflags/service-id=BFA1",
        "headers": {
              "Accept": {
                "contains": "application/json"
              }
        },
        "queryParameters": {
            "flag-type": {
                "equalTo": "CASE"
            }
        }
    },
    "response": {
        "status": 200,
        "headers": {
          "Content-Type": "application/json"
        },
        "jsonBody": {
  "flags":[
    {
      "FlagDetails":[
        {
          "name":"Case",
          "hearingRelevant":false,
          "flagComment":false,
          "defaultStatus":"Active",
          "externallyAvailable":false,
          "flagCode":"CATGRY",
          "childFlags":[
            {
              "name":"Complex Case",
              "hearingRelevant":false,
              "flagComment":false,
              "defaultStatus":"Active",
              "externallyAvailable":false,
              "flagCode":"CF0002",
              "childFlags":[

              ],
              "isParent":false,
              "Path":[
                "Case"
              ]
            },
            {
              "name":"Potentially harmful evidence",
              "hearingRelevant":false,
              "flagComment":false,
              "defaultStatus":"Active",
              "externallyAvailable":false,
              "flagCode":"CF0003",
              "childFlags":[

              ],
              "isParent":false,
              "Path":[
                "Case"
              ]
            },
            {
              "name":"Urgent case",
              "hearingRelevant":false,
              "flagComment":false,
              "defaultStatus":"Active",
              "externallyAvailable":false,
              "flagCode":"CF0007",
              "childFlags":[

              ],
              "isParent":false,
              "Path":[
                "Case"
              ]
            },
            {
              "name":"Presidential panel",
              "hearingRelevant":true,
              "flagComment":false,
              "defaultStatus":"Active",
              "externallyAvailable":false,
              "flagCode":"CF0011",
              "childFlags":[

              ],
              "isParent":false,
              "Path":[
                "Case"
              ]
            },
            {
              "name":"RRO (Restricted Reporting Order / Anonymisation)",
              "hearingRelevant":true,
              "flagComment":false,
              "defaultStatus":"Active",
              "externallyAvailable":false,
              "flagCode":"CF0012",
              "childFlags":[

              ],
              "isParent":false,
              "Path":[
                "Case"
              ]
            },
            {
              "name":"Closed material",
              "hearingRelevant":true,
              "flagComment":true,
              "defaultStatus":"Active",
              "externallyAvailable":false,
              "flagCode":"CF0013",
              "childFlags":[

              ],
              "isParent":false,
              "Path":[
                "Case"
              ]
            },
            {
              "name":"Other",
              "hearingRelevant":true,
              "flagComment":true,
              "defaultStatus":"Requested",
              "externallyAvailable":true,
              "flagCode":"OT0001",
              "childFlags":[

              ],
              "isParent":false,
              "Path":[
                "Case"
              ]
            }
          ],
          "isParent":true,
          "Path":[
            ""
          ]
        }
      ]
    }
  ]
}

    }
}' \
http://localhost:8991/__admin/mappings/new

# make responses persistent in Docker volume
curl -X POST http://localhost:8991/__admin/mappings/save

