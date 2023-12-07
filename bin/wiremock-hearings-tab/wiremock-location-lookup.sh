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
            {"court_venue_id":"19860","epimms_id":"783803","site_name":"Manchester Magistrates'\'' Court","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Crown Square, Manchester, Greater Manchester","postcode":"M60 1PR","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Magistrates Court","venue_name":"Manchester Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"512401","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""},{"court_venue_id":"10416","epimms_id":"783803","site_name":"Manchester Magistrates'\'' Court","region_id":"4","region":"North West","court_type":"Magistrates Court","court_type_id":"25","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Crown Square, Manchester, Greater Manchester","postcode":"M60 1PR","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Magistrates Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-225","mrd_venue_id":"MRD-CRT-0443","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/manchester-magistrates-court"},
            {"court_venue_id":"10414","epimms_id":"301017","site_name":"Manchester Employment Tribunal","region_id":"4","region":"North West","court_type":"Tax Tribunal","court_type_id":"33","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Parsonage","postcode":"M3 2JA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Alexandra House","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-226","mrd_venue_id":"MRD-CRT-0441","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/agricultural-land-and-drainage-first-tier-tribunal-property-chamber"},{"court_venue_id":"10415","epimms_id":"301017","site_name":"Manchester Employment Tribunal","region_id":"4","region":"North West","court_type":"Gangmasters Licensing Appeals","court_type_id":"19","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Parsonage","postcode":"M3 2JA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Alexandra House","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-226","mrd_venue_id":"MRD-CRT-0442","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/agricultural-land-and-drainage-first-tier-tribunal-property-chamber"},{"court_venue_id":"10413","epimms_id":"301017","site_name":"Manchester Employment Tribunal","region_id":"4","region":"North West","court_type":"Employment Tribunal","court_type_id":"17","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Parsonage","postcode":"M3 2JA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Alexandra House","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-226","mrd_venue_id":"MRD-CRT-0440","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/agricultural-land-and-drainage-first-tier-tribunal-property-chamber"},{"court_venue_id":"10419","epimms_id":"512401","site_name":"Manchester Tribunal Hearing Centre","region_id":"4","region":"North West","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Piccadilly Plaza","postcode":"M1 4AH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Piccadilly Exchange","venue_name":"Manchester MAT","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"196538","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-227","mrd_venue_id":"MRD-CRT-0446","service_url":"","fact_url":""},{"court_venue_id":"10418","epimms_id":"512401","site_name":"Manchester Tribunal Hearing Centre","region_id":"4","region":"North West","court_type":"Residential Property Tribunal","court_type_id":"30","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Piccadilly Plaza","postcode":"M1 4AH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Piccadilly Exchange","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-227","mrd_venue_id":"MRD-CRT-0445","service_url":"","fact_url":""},{"court_venue_id":"9989","epimms_id":"512401","site_name":"Manchester Tribunal Hearing Centre","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Piccadilly Plaza","postcode":"M1 4AH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Piccadilly Exchange","venue_name":"Manchester","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-227","mrd_venue_id":"MRD-CRT-0018","service_url":"","fact_url":""},{"court_venue_id":"10417","epimms_id":"512401","site_name":"Manchester Tribunal Hearing Centre","region_id":"4","region":"North West","court_type":"Agricultural Land and Drainage Tribunal","court_type_id":"3","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Piccadilly Plaza","postcode":"M1 4AH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Tribunal Hearing Centre - Piccadilly Exchange","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-227","mrd_venue_id":"MRD-CRT-0444","service_url":"","fact_url":""},
            {"court_venue_id":"10412","epimms_id":"326944","site_name":"Manchester Crown Court (Minshull St)","region_id":"4","region":"North West","court_type":"Crown Court","court_type_id":"15","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"The Court House, Minshull Street","postcode":"M1 3FS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"65210 BARROW IN FURNESS 2","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Crown Court (Minshull St)","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-224","mrd_venue_id":"MRD-CRT-0439","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/manchester-crown-court-minshull-st"},{"court_venue_id":"19857","epimms_id":"326944","site_name":"Manchester Crown Court (Minshull St)","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"The Court House, Minshull Street","postcode":"M1 3FS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"65210 Barrow in Furness 2","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Crown Court (Minshull st)","venue_name":"MCC Minshull st","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"512401","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""},
            {"court_venue_id":"10410","epimms_id":"144641","site_name":"Manchester Crown Court (Crown Square)","region_id":"4","region":"North West","court_type":"Crown Court","court_type_id":"15","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Courts of Justice, Crown Square","postcode":"M3 3FL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Crown Court (Crown Square)","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-223","mrd_venue_id":"MRD-CRT-0437","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/manchester-crown-court-crown-square"},{"court_venue_id":"19858","epimms_id":"144641","site_name":"Manchester Crown Court (Crown Square)","region_id":"4","region":"North West","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"8","cluster_name":"Greater Manchester","open_for_public":"YES","court_address":"Courts of Justice, Crown Square","postcode":"M3 3FL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Manchester Crown Court (Crown Square)","venue_name":"MCC Crown Square","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"512401","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
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
            {"court_venue_id":"9981","epimms_id":"227101","site_name":"Newport (South Wales) Immigration and Asylum Tribunal","region_id":"7","region":"Wales","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Langstone Business Park, Chepstow Road , Newport","postcode":"NP18 2LX","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"Tribiwnlys Mewnfudo a Lloches Casnewydd (De Cymru)","welsh_court_address":"Parc Busnes Langstone, Heol Cas-gwent, Casnewydd","court_status":"Open","court_open_date":null,"court_name":"Newport Tribunal Centre - Columbus House","venue_name":"Newport","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"Casnewydd","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"372653","welsh_court_name":"Canolfan Dribiwnlys Casnewydd - Tŷ Columbus","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-250","mrd_venue_id":"MRD-CRT-0010","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/newport-south-wales-immigration-and-asylum-tribunal"},{"court_venue_id":"10466","epimms_id":"227101","site_name":"Newport (South Wales) Immigration and Asylum Tribunal","region_id":"7","region":"Wales","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Langstone Business Park, Newport","postcode":"NP18 2LX","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"Tribiwnlys Mewnfudo a Lloches Casnewydd (De Cymru)","welsh_court_address":"Parc Busnes Langstone, Casnewydd","court_status":"Open","court_open_date":null,"court_name":"Newport Tribunal Centre - Columbus House","venue_name":"Newport","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"Casnewydd","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"Canolfan Dribiwnlys Casnewydd - Tŷ Columbus","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-250","mrd_venue_id":"MRD-CRT-0492","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/newport-south-wales-immigration-and-asylum-tribunal"}
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
            {"court_venue_id":"10046","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Family Court","court_type_id":"18","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"Birmingham","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0074","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"},{"court_venue_id":"10050","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"Birmingham CJC","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"815833","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0078","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"},{"court_venue_id":"10048","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"High Court","court_type_id":"21","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0076","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"},{"court_venue_id":"10049","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Court of Protection","court_type_id":"13","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0077","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"},{"court_venue_id":"10051","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"Birmingham","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0079","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"},{"court_venue_id":"10045","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"County Court","court_type_id":"10","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"0300 123 5577","closed_date":null,"court_location_code":"127","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"Birmingham","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0073","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"},{"court_venue_id":"10047","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Business and Property Court","court_type_id":"6","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"MRD-CRT-0075","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"},{"court_venue_id":"19848","epimms_id":"231596","site_name":"Birmingham Civil and Family Justice Centre","region_id":"2","region":"Midlands","court_type":"Criminal Injuries Compensation","court_type_id":"14","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Priory Courts, 33 Bull Street","postcode":"B4 6DS","phone_number":"0300 123 5577","closed_date":null,"court_location_code":"127","dx_address":"701987 BIRMINGHAM 7","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Birmingham Civil And Family Justice Centre","venue_name":"Birmingham","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-031","mrd_venue_id":"","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/birmingham-civil-and-family-justice-centre"}
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
            {"court_venue_id":"10252","epimms_id":"366559","site_name":"Glasgow Tribunals Centre","region_id":"11","region":"Scotland","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"20 York Street, Glasgow","postcode":"G2  8GT","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Atlantic Quay - Glasgow","venue_name":"Glasgow","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-011","mrd_venue_id":"MRD-CRT-0280","service_url":"","fact_url":""},{"court_venue_id":"25318","epimms_id":"366559","site_name":"Glasgow Tribunals Centre","region_id":"11","region":"Scotland","court_type":"Employment Tribunal","court_type_id":"17","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"20 York Street, Glasgow","postcode":"G2  8GT","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Glasgow Tribunals Centre","venue_name":"Glasgow","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"366559","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-011","mrd_venue_id":"","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/glasgow-tribunals-centre"},{"court_venue_id":"10253","epimms_id":"366559","site_name":"Glasgow Tribunals Centre","region_id":"11","region":"Scotland","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"20 York Street, Glasgow","postcode":"G2  8GT","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Atlantic Quay - Glasgow","venue_name":"Glasgow","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-011","mrd_venue_id":"MRD-CRT-0281","service_url":"","fact_url":""},{"court_venue_id":"19847","epimms_id":"366559","site_name":"Glasgow Tribunals Centre","region_id":"11","region":"Scotland","court_type":"Criminal Injuries Compensation","court_type_id":"14","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"20 York Street, Glasgow","postcode":"G2  8GT","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Glasgow Tribunals Centre","venue_name":"Glasgow","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-011","mrd_venue_id":"","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/glasgow-tribunals-centre"}
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
            {"court_venue_id":"10451","epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"Family Court","court_type_id":"18","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Barras Bridge, Newcastle-Upon-Tyne","postcode":"NE99 1NA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"Newcastle","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-241","mrd_venue_id":"MRD-CRT-0477","service_url":"","fact_url":""},{"court_venue_id":"10450","epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"County Court","court_type_id":"10","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Barras Bridge, Newcastle-Upon-Tyne","postcode":"NE1 8QF","phone_number":"0191 2058750","closed_date":null,"court_location_code":"278","dx_address":"336901 Newcastle upon Tyne 55","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"Newcastle","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-241","mrd_venue_id":"MRD-CRT-0476","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/newcastle-civil-family-courts-and-tribunals-centre"},{"court_venue_id":"10454","epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Barras Bridge, Newcastle-Upon-Tyne","postcode":"NE1 8QF","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"Newcastle","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"495952","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-241","mrd_venue_id":"MRD-CRT-0480","service_url":"","fact_url":""},{"court_venue_id":"10453","epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Barras Bridge, Newcastle-Upon-Tyne","postcode":"NE1 8QF","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"Newcastle","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-241","mrd_venue_id":"MRD-CRT-0479","service_url":"","fact_url":""},{"court_venue_id":"10452","epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"Employment Tribunal","court_type_id":"17","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Barras Bridge, Newcastle-Upon-Tyne","postcode":"NE99 1NA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-241","mrd_venue_id":"MRD-CRT-0478","service_url":"","fact_url":""},{"court_venue_id":"10449","epimms_id":"366796","site_name":"Newcastle Civil & Family Courts and Tribunals Centre","region_id":"3","region":"North East","court_type":"Court of Protection","court_type_id":"13","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Barras Bridge, Newcastle-Upon-Tyne","postcode":"NE99 1NA","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Newcastle Civil And Family Courts And Tribunals Centre","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-241","mrd_venue_id":"MRD-CRT-0475","service_url":"","fact_url":""}
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
            {"court_venue_id":"10281","epimms_id":"386417","site_name":"Hatton Cross Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"York House And Wellington House, 2-3 Dukes Green, Feltham, Middlesex","postcode":"TW14 0LS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hatton Cross Tribunal Hearing Centre","venue_name":"Hatton Cross","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"37792","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-155","mrd_venue_id":"MRD-CRT-0309","service_url":"http://sscs.venues.tribunals.gov.uk/Venues/Sutton/hattoncross.htm","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/hatton-cross-tribunal-hearing-centre"},{"court_venue_id":"10280","epimms_id":"386417","site_name":"Hatton Cross Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"York House And Wellington House, 2-3 Dukes Green, Feltham, Middlesex","postcode":"TW14 0LS","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hatton Cross Tribunal Hearing Centre","venue_name":"Hatton Cross","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-155","mrd_venue_id":"MRD-CRT-0308","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/hatton-cross-tribunal-hearing-centre"}
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
            {"court_venue_id":"10479","epimms_id":"443257","site_name":"North Tyneside Magistrates'\'' Court","region_id":"3","region":"North East","court_type":"Magistrates Court","court_type_id":"25","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Tynemouth Road, The Court House","postcode":"NE30 1AG","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"702483 CAERNARFON 2","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"North Tyneside Magistrates Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-257","mrd_venue_id":"MRD-CRT-0505","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/north-tyneside-magistrates-court"},{"court_venue_id":"19861","epimms_id":"443257","site_name":"North Tyneside Magistrates'\'' Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"4","cluster_name":"Cleveland, Durham, Northumbria","open_for_public":"YES","court_address":"Tynemouth Road, The Court House","postcode":"NE30 1AG","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"702483 Caernarfon 2","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"North Tyneside Magistrates Court","venue_name":"NTH Tyne Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"366796","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
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
            {"court_venue_id":"10360","epimms_id":"569737","site_name":"Leeds Magistrates'\'' Court and Family Court","region_id":"3","region":"North East","court_type":"Family Court","court_type_id":"18","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Westgate","postcode":"LS1 3BY","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Leeds Magistrates Court And Family Court","venue_name":"Leeds Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-194","mrd_venue_id":"MRD-CRT-0387","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/leeds-magistrates-court-and-family-court"},{"court_venue_id":"10359","epimms_id":"569737","site_name":"Leeds Magistrates'\'' Court and Family Court","region_id":"3","region":"North East","court_type":"Magistrates Court","court_type_id":"25","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Westgate","postcode":"LS1 3BY","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Leeds Magistrates Court And Family Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-194","mrd_venue_id":"MRD-CRT-0386","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/leeds-district-magistrates-court-and-family-court"},{"court_venue_id":"19862","epimms_id":"569737","site_name":"Leeds Magistrates'\'' Court and Family Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Westgate","postcode":"LS1 3BY","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Leeds Magistrates Court and Family Court","venue_name":"Leeds Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"698118","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
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
            {"court_venue_id":"10088","epimms_id":"698118","site_name":"Bradford Tribunal Hearing Centre","region_id":"3","region":"North East","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Rushton Avenue","postcode":"BD3 7BH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford Tribunal Hearing Centre","venue_name":"Bradford","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"NBC","parent_location":"495952","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-051","mrd_venue_id":"MRD-CRT-0116","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/bradford-tribunal-hearing-centre"},{"court_venue_id":"10087","epimms_id":"698118","site_name":"Bradford Tribunal Hearing Centre","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Rushton Avenue","postcode":"BD3 7BH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford Tribunal Hearing Centre","venue_name":"Bradford","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-051","mrd_venue_id":"MRD-CRT-0115","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/bradford-tribunal-hearing-centre"},{"court_venue_id":"19850","epimms_id":"698118","site_name":"Bradford Tribunal Hearing Centre","region_id":"3","region":"North East","court_type":"Criminal Injuries Compensation","court_type_id":"14","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"Rushton Avenue","postcode":"BD3 7BH","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford Tribunal Hearing Centre","venue_name":"Bradford","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-051","mrd_venue_id":"","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/bradford-tribunal-hearing-centre"},
            {"court_venue_id":"10083","epimms_id":"580554","site_name":"Bradford and Keighley Magistrates'\'' Court and Family Court","region_id":"3","region":"North East","court_type":"Family Court","court_type_id":"18","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"The Tyrls, PO Box 187","postcode":"BD1 1JL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford And Keighley Magistrates Court And Family Court","venue_name":"Bradford Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-049","mrd_venue_id":"MRD-CRT-0111","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/bradford-and-keighley-magistrates-court-and-family-court"},{"court_venue_id":"10082","epimms_id":"580554","site_name":"Bradford and Keighley Magistrates'\'' Court and Family Court","region_id":"3","region":"North East","court_type":"Magistrates Court","court_type_id":"25","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"The Tyrls, Po Box 187","postcode":"BD1 1JL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford And Keighley Magistrates Court And Family Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-049","mrd_venue_id":"MRD-CRT-0110","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/bradford-and-keighley-magistrates-court-and-family-court"},{"court_venue_id":"19856","epimms_id":"580554","site_name":"Bradford and Keighley Magistrates'\'' Court and Family Court","region_id":"3","region":"North East","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"14","cluster_name":"North and West Yorkshire","open_for_public":"YES","court_address":"The Tyrls, PO Box 187","postcode":"BD1 1JL","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Bradford and Keighley Magistrates Court and Family Court","venue_name":"","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"698118","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
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
            {"court_venue_id":"10497","epimms_id":"618632","site_name":"Nottingham Magistrates'\'' Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Family Court","court_type_id":"18","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"Nottingham Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-266","mrd_venue_id":"MRD-CRT-0522","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/midlands-eastemployment-tribunal"},{"court_venue_id":"10499","epimms_id":"618632","site_name":"Nottingham Magistrates'\'' Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"Nottingham Mags","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"815833","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-266","mrd_venue_id":"MRD-CRT-0524","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/nottingham-magistrates-court"},{"court_venue_id":"19838","epimms_id":"618632","site_name":"Nottingham Magistrates'\'' Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Criminal Injuries Compensation","court_type_id":"14","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"2568","dx_address":"719030 Nottingham 32","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"Nottingham","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-266","mrd_venue_id":"","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/midlands-eastemployment-tribunal"},{"court_venue_id":"10495","epimms_id":"618632","site_name":"Nottingham Magistrates'\'' Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Magistrates Court","court_type_id":"25","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-266","mrd_venue_id":"MRD-CRT-0520","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/midlands-eastemployment-tribunal"},{"court_venue_id":"10498","epimms_id":"618632","site_name":"Nottingham Magistrates'\'' Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Employment Tribunal","court_type_id":"17","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-266","mrd_venue_id":"MRD-CRT-0523","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/midlands-eastemployment-tribunal"},{"court_venue_id":"19859","epimms_id":"618632","site_name":"Nottingham Magistrates'\'' Court /Nottingham Justice Centre","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"6","cluster_name":"Derbyshire and Nottinghamshire","open_for_public":"YES","court_address":"Carrington Street","postcode":"NG2 1EE","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Nottingham Magistrates Court","venue_name":"Nottingham JC","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"231596","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"","mrd_venue_id":"","service_url":"","fact_url":""}
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
            {"court_venue_id":"10289","epimms_id":"745389","site_name":"Hendon Magistrates'\'' Court","region_id":"1","region":"London","court_type":"Magistrates Court","court_type_id":"25","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"The Court House, The Hyde","postcode":"NW9 7BY","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hendon Magistrates Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-158","mrd_venue_id":"MRD-CRT-0317","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/hendon-magistrates-court"},{"court_venue_id":"10290","epimms_id":"745389","site_name":"Hendon Magistrates'\'' Court","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"The Court House, The Hyde","postcode":"NW9 7BY","phone_number":"0300 303 0645","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Hendon Magistrates Court","venue_name":"Hendon","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"765324","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-158","mrd_venue_id":"MRD-CRT-0318","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/hendon-magistrates-court"}
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
            {"court_venue_id":"10661","epimms_id":"765324","site_name":"Taylor House Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Tax Tribunal","court_type_id":"33","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Rosebery Avenue","postcode":"EC1R 4QU","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Taylor House Tribunal Hearing Centre","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-340","mrd_venue_id":"MRD-CRT-0684","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/taylor-house-tribunal-hearing-centre"},{"court_venue_id":"10660","epimms_id":"765324","site_name":"Taylor House Tribunal Hearing Centre","region_id":"1","region":"London","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":null,"cluster_name":null,"open_for_public":"YES","court_address":"Rosebery Avenue","postcode":"EC1R 4QU","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Taylor House Tribunal Hearing Centre","venue_name":"Taylor House","is_case_management_location":"Y","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-340","mrd_venue_id":"MRD-CRT-0683","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/taylor-house-tribunal-hearing-centre"}
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
            {"court_venue_id":"10187","epimms_id":"787030","site_name":"Coventry Magistrates'\'' Court","region_id":"2","region":"Midlands","court_type":"Social Security and Child Support Tribunal","court_type_id":"31","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Little Park Street","postcode":"CV1 2SQ","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Coventry Magistrates Court","venue_name":"Coventry (CMCB)","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"815833","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-104","mrd_venue_id":"MRD-CRT-0215","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/coventry-magistrates-court"},{"court_venue_id":"10185","epimms_id":"787030","site_name":"Coventry Magistrates'\'' Court","region_id":"2","region":"Midlands","court_type":"Magistrates Court","court_type_id":"25","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Little Park Street","postcode":"CV1 2SQ","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Coventry Magistrates Court","venue_name":"","is_case_management_location":"","is_hearing_location":"","welsh_venue_name":"","is_temporary_location":"","is_nightingale_court":"","location_type":"","parent_location":"","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-104","mrd_venue_id":"MRD-CRT-0213","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/coventry-magistrates-court"},{"court_venue_id":"10186","epimms_id":"787030","site_name":"Coventry Magistrates'\'' Court","region_id":"2","region":"Midlands","court_type":"Immigration and Asylum Tribunal","court_type_id":"23","cluster_id":"18","cluster_name":"West Midlands and Warwickshire","open_for_public":"YES","court_address":"Little Park Street","postcode":"CV1 2SQ","phone_number":"","closed_date":null,"court_location_code":"","dx_address":"","welsh_site_name":"","welsh_court_address":"","court_status":"Open","court_open_date":null,"court_name":"Coventry Magistrates Court","venue_name":"Coventry","is_case_management_location":"N","is_hearing_location":"Y","welsh_venue_name":"","is_temporary_location":"N","is_nightingale_court":"N","location_type":"COURT","parent_location":"231596","welsh_court_name":"","uprn":"","venue_ou_code":"","mrd_building_location_id":"MRD-BLD-104","mrd_venue_id":"MRD-CRT-0214","service_url":"","fact_url":"https://www.find-court-tribunal.service.gov.uk/courts/coventry-magistrates-court"}
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
