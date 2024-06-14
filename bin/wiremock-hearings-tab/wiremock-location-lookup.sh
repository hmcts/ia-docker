#!/usr/bin/env bash

# Setup Wiremock responses for looking lookup by name

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "manch",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"19860","epimms_id":"783803","site_name":"Manchester Magistrates'\'' Court","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Crown Square, Manchester, Greater Manchester","postcode":"M60 1PR","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Magistrates Court","venue_name":"Manchester Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"512401","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "newp",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10466","epimms_id":"227101","site_name":"Newport (South Wales) Immigration and Asylum Tribunal","region_id":"7","region":"Wales","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Langstone Business Park, Newport","postcode":"NP18 2LX","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"Tribiwnlys Mewnfudo a Lloches Casnewydd (De Cymru)","welsh_court_address":"Parc Busnes Langstone, Casnewydd","court_status":"Open","court_open_date":null,"court_name":"Newport Tribunal Centre - Columbus House","venue_name":"Newport","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"Casnewydd","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"Canolfan Dribiwnlys Casnewydd - Tŷ Columbus","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-250","mrd_venue_id":"MRD-CRT-0492","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/newport-south-wales-immigration-and-asylum-tribunal"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "birm",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10051","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"Birmingham","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0079","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "harm",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10271","epimms_id":"28837","site_name":"Harmondsworth Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Colnbrook Bypass","postcode":"UB7 0HB","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Harmondsworth Tribunal Hearing Centre","venue_name":"Harmondsworth","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"386417","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-149","mrd_venue_id":"MRD-CRT-0299","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/harmondsworth-tribunal-hearing-centre"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "glas",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10252","epimms_id":"366559","site_name":"Glasgow Tribunals Centre","region_id":"11","region":"Scotland","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"20 York Street, Glasgow","postcode":"G2  8GT","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Atlantic Quay - Glasgow","venue_name":"Glasgow","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-011","mrd_venue_id":"MRD-CRT-0280","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "newc",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10453","epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Barras Bridge, Newcastle-Upon-Tyne","postcode":"NE1 8QF","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"Newcastle","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-241","mrd_venue_id":"MRD-CRT-0479","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "hatt",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10280","epimms_id":"386417","site_name":"Hatton Cross Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"York House And Wellington House, 2-3 Dukes Green, Feltham, Middlesex","postcode":"TW14 0LS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hatton Cross Tribunal Hearing Centre","venue_name":"Hatton Cross","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-155","mrd_venue_id":"MRD-CRT-0308","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/hatton-cross-tribunal-hearing-centre"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "Nort",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"19861","epimms_id":"443257","site_name":"North Tyneside Magistrates'\'' Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Tynemouth Road, The Court House","postcode":"NE30 1AG","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"702483 Caernarfon 2","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"North Tyneside Magistrates Court","venue_name":"NTH Tyne Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"366796","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "leed",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"19862","epimms_id":"569737","site_name":"Leeds Magistrates'\'' Court and Family Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Westgate","postcode":"LS1 3BY","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Leeds Magistrates Court and Family Court","venue_name":"Leeds Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"698118","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "brad",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10087","epimms_id":"698118","site_name":"Bradford Tribunal Hearing Centre","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Rushton Avenue","postcode":"BD3 7BH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford Tribunal Hearing Centre","venue_name":"Bradford","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-051","mrd_venue_id":"MRD-CRT-0115","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/bradford-tribunal-hearing-centre"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "nott",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"19859","epimms_id":"618632","site_name":"Nottingham Magistrates'\'' Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"Nottingham JC","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"231596","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "yarl",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10748","epimms_id":"649000","site_name":"Yarl'\''s Wood Immigration and Asylum Hearing Centre","region_id":"5","region":"South East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"2","cluster_name":"Bedfordshire, Cambridgeshire, Hertfordshire","open_for_public":"YES","court_address":"Twinwood Road","postcode":"MK44 1FD","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Yarls Wood Immigration And Asylum Hearing Centre","venue_name":"Yarl'\''s Wood","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"765324","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-381","mrd_venue_id":"MRD-CRT-0771","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/yarls-wood-immigration-and-asylum-hearing-centre"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "hend",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10290","epimms_id":"745389","site_name":"Hendon Magistrates'\'' Court","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"The Court House, The Hyde","postcode":"NW9 7BY","phone_number":"0300 303 0645","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hendon Magistrates Court","venue_name":"Hendon","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"765324","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-158","mrd_venue_id":"MRD-CRT-0318","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/hendon-magistrates-court"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "tayl",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10660","epimms_id":"765324","site_name":"Taylor House Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Rosebery Avenue","postcode":"EC1R 4QU","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Taylor House Tribunal Hearing Centre","venue_name":"Taylor House","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-340","mrd_venue_id":"MRD-CRT-0683","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/taylor-house-tribunal-hearing-centre"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "cove",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"10186","epimms_id":"787030","site_name":"Coventry Magistrates'\'' Court","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Little Park Street","postcode":"CV1 2SQ","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Coventry Magistrates Court","venue_name":"Coventry","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"231596","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-104","mrd_venue_id":"MRD-CRT-0214","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/coventry-magistrates-court"}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "allo",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"25848","epimms_id":"999971","site_name":"Alloa Sheriff Court","region_id":"11","region":"Scotland","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"47 Drysdale Street, Alloa","postcode":"FK10 1JA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"560433","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Alloa Sheriff Court","venue_name":"Alloa Sheriff C","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"366559","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-417","mrd_venue_id":"","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "stir",
                "caseInsensitive": true
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
        "jsonBody": []
    }
}' http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock location lookup: %{http_code}\n" POST \--data '{
    "request": {
        "method": "GET",
        "urlPath": "/refdata/location/court-venues/venue-search",
        "queryParameters": {
            "search-string": {
                "contains": "belf",
                "caseInsensitive": true
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
        "jsonBody": [
            {"court_venue_id":"25850","epimms_id":"999973","site_name":"Belfast Laganside Court","region_id":"10","region":"Northern Ireland","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"45 Donegall Quay","postcode":"BT1 3LL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Belfast Laganside Court","venue_name":"Belfast LC","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"366559","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-415","mrd_venue_id":"","service_url":"","fact_url":""}
        ]
    }
}' http://localhost:8991/__admin/mappings/new
