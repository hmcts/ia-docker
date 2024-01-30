#!/usr/bin/env bash

# Setup Wiremock responses for a specific location by epimms_id

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "144641"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"144641","site_name":"Manchester Crown Court (Crown Square)","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Courts of Justice,own Square","postcode":"M3 3FL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null, "court_name":"Manchester Crown Court (Crown Square)","venue_name":"MCC Crown Square","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "227101"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"227101","site_name":"Newport (South Wales) Immigration and Asylum Tribunal","region_id":"7","region":"Wales","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Langstone Business Park,wport","postcode":"NP18 2LX","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"Tribiwnlys Mewnfudo a Lloches Casnewydd (De Cymru)","welsh_court_address":"Parc Busnes Langstone,snewydd","court_status":"Open","court_open_date":null,"court_name":"Newport Tribunal Centre - Columbus House","venue_name":"Newport","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "231596"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"Birmingham","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "28837"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"28837","site_name":"Harmondsworth Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Colnbrook Bypass","postcode":"UB7 0HB","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Harmondsworth Tribunal Hearing Centre","venue_name":"Harmondsworth","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "326944"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"326944","site_name":"Manchester Crown Court (Minshull St)","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"The Court House,nshull Street","postcode":"M1 3FS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"65210 Barrow in Furness 2","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Crown Court (Minshull st)","venue_name":"MCC Minshull st","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "366559"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"366559","site_name":"Glasgow Tribunals Centre","region_id":"11","region":"Scotland","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"20 York Street,asgow","postcode":"G2  8GT","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Atlantic Quay - Glasgow","venue_name":"Glasgow","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "366796"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","cluster_id":"4","cluster_name":"Cleveland,rham,rthumbria","open_for_public":"YES","court_address":"Barras Bridge,wcastle-Upon-Tyne","postcode":"NE1 8QF","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"Newcastle","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "386417"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"386417","site_name":"Hatton Cross Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"York House And Wellington House,3 Dukes Green,ltham,ddlesex","postcode":"TW14 0LS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hatton Cross Tribunal Hearing Centre","venue_name":"Hatton Cross","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "443257"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"443257","site_name":"North Tyneside Magistrates'\''  Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","cluster_id":"4","cluster_name":"Cleveland,rham,rthumbria","open_for_public":"YES","court_address":"Tynemouth Road,e Court House","postcode":"NE30 1AG","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"702483 Caernarfon 2","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"North Tyneside Magistrates Court","venue_name":"NTH Tyne Mags","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "512401"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"512401","site_name":"Manchester Tribunal Hearing Centre","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Piccadilly Plaza","postcode":"M1 4AH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Piccadilly Exchange","venue_name":"Manchester","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "569737"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"569737","site_name":"Leeds Magistrates'\''  Court and Family Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Westgate","postcode":"LS1 3BY","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Leeds Magistrates Court and Family Court","venue_name":"Leeds Mags","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "580554"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"580554","site_name":"Bradford and Keighley Magistrates'\''  Court and Family Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"The Tyrls, Box 187","postcode":"BD1 1JL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford and Keighley Magistrates Court and Family Court","venue_name":"","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "618632"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"618632","site_name":"Nottingham Magistrates'\''  Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"Nottingham JC","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "649000"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"649000","site_name":"Yarl'\''s Wood Immigration and Asylum Hearing Centre","region_id":"5","region":"South East","court_type":"Immigration and Asylum Tribunal","cluster_id":"2","cluster_name":"Bedfordshire,mbridgeshire,rtfordshire","open_for_public":"YES","court_address":"Twinwood Road","postcode":"MK44 1FD","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Yarls Wood Immigration And Asylum Hearing Centre","venue_name":"Yarl'\''s Wood","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "698118"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"698118","site_name":"Bradford Tribunal Hearing Centre","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Rushton Avenue","postcode":"BD3 7BH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford Tribunal Hearing Centre","venue_name":"Bradford","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "745389"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"745389","site_name":"Hendon Magistrates'\''  Court","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"The Court House,e Hyde","postcode":"NW9 7BY","phone_number":"0300 303 0645","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hendon Magistrates Court","venue_name":"Hendon","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "765324"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"765324","site_name":"Taylor House Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Rosebery Avenue","postcode":"EC1R 4QU","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Taylor House Tribunal Hearing Centre","venue_name":"Taylor House","is_case_management_location":"Y","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "783803"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"783803","site_name":"Manchester Magistrates'\''  Court","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Crown Square,nchester,eater Manchester","postcode":"M60 1PR","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Magistrates Court","venue_name":"Manchester Mags","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "787030"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"787030","site_name":"Coventry Magistrates'\''  Court","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Little Park Street","postcode":"CV1 2SQ","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Coventry Magistrates Court","venue_name":"Coventry","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "999971"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"999971","site_name":"Alloa Sheriff Court","region_id":"11","region":"Scotland","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"47 Drysdale Street,loa","postcode":"FK10 1JA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"560433","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Alloa Sheriff Court","venue_name":"Alloa Sheriff C","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "999972"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"999972","site_name":"Stirling Sheriff Court","region_id":"11","region":"Scotland","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Viewfield Place,irling","postcode":"FK8 1NQ","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Closed","court_open_date":null,"court_name":"Stirling Sheriff Court","venue_name":"Sheriff court","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

curl -o /dev/null -s -w "wiremock locationById: %{http_code}\n" POST \
--data '{
    "request": {
    "method": "GET",
    "urlPath": "/refdata/location/court-venues",
    "queryParameters": {
        "epimms_id": {
            "equalTo": "999973"
        }
    }
  },
  "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "jsonBody": [{"epimms_id":"999973","site_name":"Belfast Laganside Court","region_id":"10","region":"Northern Ireland","court_type":"Immigration and Asylum Tribunal","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"45 Donegall Quay","postcode":"BT1 3LL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Belfast Laganside Court","venue_name":"Belfast LC","is_case_management_location":"N","is_hearing_location":"Y"}]
      }
  }' \
  http://localhost:8991/__admin/mappings/new

