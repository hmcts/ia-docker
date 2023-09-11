#!/usr/bin/env bash

# Setup Wiremock responses for looking up a venue (Hatton Cross)

curl -X POST \
--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "equalTo": "Hatton Cross Tribunal Hearing Centre"
            },
            "court-type-id": {
                "equalTo": "23"
            }
        }
    },
    "response": {
        "status": 200,
        "headers": {
          "Content-Type": "application/json"
        },
        "jsonBody": [{"epimms_id":"386417","site_name":"Hatton Cross Tribunal Hearing Centre","court_name":"Hatton Cross Tribunal Hearing Centre","open_for_public":"YES","region_id":"1","region":"London","cluster_id":null,"cluster_name":null,"court_status":"Open","court_open_date":null,"closed_date":null,"postcode":"TW14 0LS","court_address":"York House And Wellington House, 2-3 Dukes Green, Feltham, Middlesex","phone_number":"","court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","venue_name":"Hatton Cross","is_case_management_location":"Y","is_hearing_location":"Y"}]
        }
}' \
  http://localhost:8991/__admin/mappings/new
