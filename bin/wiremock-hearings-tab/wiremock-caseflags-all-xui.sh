#!/usr/bin/env bash

# Setup Wiremock responses for Case Flags retrieved by XUI in Hearings tab

curl -X POST --data '{
  "request":{
    "method":"GET",
    "urlPath":"/refdata/commondata/caseflags/service-id=BFA1",
    "headers":{
      "Accept":{
        "contains":"application/xml"
      }
    }
  },
  "response":{
    "status":200,
    "headers":{
      "Content-Type":"application/json"
    },
    "jsonBody":{
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
            },
            {
              "name":"Party",
              "hearingRelevant":false,
              "flagComment":false,
              "defaultStatus":"Active",
              "externallyAvailable":false,
              "flagCode":"CATGRY",
              "childFlags":[
                {
                  "name":"Special measure",
                  "hearingRelevant":false,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"CATGRY",
                  "childFlags":[
                    {
                      "name":"Evidence given in private",
                      "hearingRelevant":true,
                      "flagComment":true,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"SM0004",
                      "childFlags":[
                        
                      ],
                      "isParent":false,
                      "Path":[
                        "Party",
                        "Special measure"
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
                        "Party",
                        "Special measure"
                      ]
                    }
                  ],
                  "isParent":true,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Reasonable adjustment",
                  "hearingRelevant":false,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"CATGRY",
                  "childFlags":[
                    {
                      "name":"I need documents in an alternative format",
                      "hearingRelevant":false,
                      "flagComment":false,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"CATGRY",
                      "childFlags":[
                        {
                          "name":"Documents in a specified colour",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0010",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
                          ]
                        },
                        {
                          "name":"Documents in easy read format",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0011",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
                          ]
                        },
                        {
                          "name":"Braille documents",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0012",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
                          ]
                        },
                        {
                          "name":"Documents in large print",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0013",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
                          ]
                        },
                        {
                          "name":"Audio translation of documents",
                          "hearingRelevant":false,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0014",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
                          ]
                        },
                        {
                          "name":"Documents read out to me",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0015",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
                          ]
                        },
                        {
                          "name":"Information emailed to me",
                          "hearingRelevant":false,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0016",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
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
                            "Party",
                            "Reasonable adjustment",
                            "I need documents in an alternative format"
                          ]
                        }
                      ],
                      "isParent":true,
                      "Path":[
                        "Party",
                        "Reasonable adjustment"
                      ]
                    },
                    {
                      "name":"I need help with forms",
                      "hearingRelevant":false,
                      "flagComment":false,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"CATGRY",
                      "childFlags":[
                        {
                          "name":"Guidance on how to complete forms",
                          "hearingRelevant":false,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0017",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help with forms"
                          ]
                        },
                        {
                          "name":"Support filling in forms",
                          "hearingRelevant":false,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0018",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help with forms"
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
                            "Party",
                            "Reasonable adjustment",
                            "I need help with forms"
                          ]
                        }
                      ],
                      "isParent":true,
                      "Path":[
                        "Party",
                        "Reasonable adjustment"
                      ]
                    },
                    {
                      "name":"I need adjustments to get to, into and around our buildings",
                      "hearingRelevant":false,
                      "flagComment":false,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"CATGRY",
                      "childFlags":[
                        {
                          "name":"Step free / wheelchair access",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0019",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
                          ]
                        },
                        {
                          "name":"Use of venue wheelchair",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0020",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
                          ]
                        },
                        {
                          "name":"Parking space close to the venue",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0021",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
                          ]
                        },
                        {
                          "name":"Accessible toilet",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0022",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
                          ]
                        },
                        {
                          "name":"Help using a lift",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0023",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
                          ]
                        },
                        {
                          "name":"A different type of chair",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0024",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
                          ]
                        },
                        {
                          "name":"Guiding in the building",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0025",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
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
                            "Party",
                            "Reasonable adjustment",
                            "I need adjustments to get to, into and around our buildings"
                          ]
                        }
                      ],
                      "isParent":true,
                      "Path":[
                        "Party",
                        "Reasonable adjustment"
                      ]
                    },
                    {
                      "name":"I need to bring support with me to a hearing",
                      "hearingRelevant":false,
                      "flagComment":false,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"CATGRY",
                      "childFlags":[
                        {
                          "name":"Support worker or carer with me",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0026",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need to bring support with me to a hearing"
                          ]
                        },
                        {
                          "name":"Friend or family with me",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0027",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need to bring support with me to a hearing"
                          ]
                        },
                        {
                          "name":"Assistance / guide dog",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0028",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need to bring support with me to a hearing"
                          ]
                        },
                        {
                          "name":"Therapy animal",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0029",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need to bring support with me to a hearing"
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
                            "Party",
                            "Reasonable adjustment",
                            "I need to bring support with me to a hearing"
                          ]
                        }
                      ],
                      "isParent":true,
                      "Path":[
                        "Party",
                        "Reasonable adjustment"
                      ]
                    },
                    {
                      "name":"I need something to feel comfortable during my hearing",
                      "hearingRelevant":false,
                      "flagComment":false,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"CATGRY",
                      "childFlags":[
                        {
                          "name":"Appropriate lighting",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0030",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need something to feel comfortable during my hearing"
                          ]
                        },
                        {
                          "name":"Regular breaks",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0031",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need something to feel comfortable during my hearing"
                          ]
                        },
                        {
                          "name":"Space to be able to get up and move around",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0032",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need something to feel comfortable during my hearing"
                          ]
                        },
                        {
                          "name":"Private waiting area",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0033",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need something to feel comfortable during my hearing"
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
                            "Party",
                            "Reasonable adjustment",
                            "I need something to feel comfortable during my hearing"
                          ]
                        }
                      ],
                      "isParent":true,
                      "Path":[
                        "Party",
                        "Reasonable adjustment"
                      ]
                    },
                    {
                      "name":"I need to request a certain type of hearing",
                      "hearingRelevant":false,
                      "flagComment":false,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"CATGRY",
                      "childFlags":[
                        {
                          "name":"In person hearing",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0034",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need to request a certain type of hearing"
                          ]
                        },
                        {
                          "name":"Video hearing",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0035",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need to request a certain type of hearing"
                          ]
                        },
                        {
                          "name":"Phone hearing",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0036",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need to request a certain type of hearing"
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
                            "Party",
                            "Reasonable adjustment",
                            "I need to request a certain type of hearing"
                          ]
                        }
                      ],
                      "isParent":true,
                      "Path":[
                        "Party",
                        "Reasonable adjustment"
                      ]
                    },
                    {
                      "name":"I need help communicating and understanding",
                      "hearingRelevant":false,
                      "flagComment":false,
                      "defaultStatus":"Active",
                      "externallyAvailable":false,
                      "flagCode":"CATGRY",
                      "childFlags":[
                        {
                          "name":"I need an Hearing Enhancement System (Hearing/Induction Loop, Infrared Receiver)",
                          "hearingRelevant":false,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":false,
                          "flagCode":"CATGRY",
                          "childFlags":[
                            {
                              "name":"Hearing loop (hearing enhancement system)",
                              "hearingRelevant":true,
                              "flagComment":false,
                              "defaultStatus":"Active",
                              "externallyAvailable":true,
                              "flagCode":"RA0043",
                              "childFlags":[
                                
                              ],
                              "isParent":false,
                              "Path":[
                                "Party",
                                "Reasonable adjustment",
                                "I need help communicating and understanding",
                                "I need an Hearing Enhancement System (Hearing",
                                "Induction Loop, Infrared Receiver)"
                              ]
                            },
                            {
                              "name":"Infrared receiver (hearing enhancement system)",
                              "hearingRelevant":true,
                              "flagComment":false,
                              "defaultStatus":"Active",
                              "externallyAvailable":true,
                              "flagCode":"RA0044",
                              "childFlags":[
                                
                              ],
                              "isParent":false,
                              "Path":[
                                "Party",
                                "Reasonable adjustment",
                                "I need help communicating and understanding",
                                "I need an Hearing Enhancement System (Hearing",
                                "Induction Loop, Infrared Receiver)"
                              ]
                            },
                            {
                              "name":"Induction loop (hearing enhancement system)",
                              "hearingRelevant":true,
                              "flagComment":false,
                              "defaultStatus":"Active",
                              "externallyAvailable":true,
                              "flagCode":"RA0045",
                              "childFlags":[
                                
                              ],
                              "isParent":false,
                              "Path":[
                                "Party",
                                "Reasonable adjustment",
                                "I need help communicating and understanding",
                                "I need an Hearing Enhancement System (Hearing",
                                "Induction Loop, Infrared Receiver)"
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
                                "Party",
                                "Reasonable adjustment",
                                "I need help communicating and understanding",
                                "I need an Hearing Enhancement System (Hearing",
                                "Induction Loop, Infrared Receiver)"
                              ]
                            }
                          ],
                          "isParent":true,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Extra time to think and explain myself",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0037",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Intermediary",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0038",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Speech to text reporter (palantypist)",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0039",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Need to be close to who is speaking",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0040",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Lip speaker",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0041",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Sign Language Interpreter",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0042",
                          "listOfValuesLength":12,
                          "listOfValues":[
                            {
                              "key":"ase",
                              "value":"American Sign Language (ASL)"
                            },
                            {
                              "key":"bfi",
                              "value":"British Sign Language (BSL)"
                            },
                            {
                              "key":"ils",
                              "value":"International Sign (IS)"
                            },
                            {
                              "key":"sign-dfr",
                              "value":"Deaf Relay"
                            },
                            {
                              "key":"sign-dma",
                              "value":"Deafblind manual alphabet"
                            },
                            {
                              "key":"sign-hos",
                              "value":"Hands on signing"
                            },
                            {
                              "key":"sign-lps",
                              "value":"Lipspeaker"
                            },
                            {
                              "key":"sign-mkn",
                              "value":"Makaton"
                            },
                            {
                              "key":"sign-ntr",
                              "value":"Notetaker"
                            },
                            {
                              "key":"sign-pst",
                              "value":"Palantypist / Speech to text"
                            },
                            {
                              "key":"sign-sse",
                              "value":"Speech Supported English (SSE)"
                            },
                            {
                              "key":"sign-vfs",
                              "value":"Visual frame signing"
                            }
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Visit to court or tribunal before the hearing",
                          "hearingRelevant":false,
                          "flagComment":false,
                          "defaultStatus":"Requested",
                          "externallyAvailable":true,
                          "flagCode":"RA0046",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        },
                        {
                          "name":"Explanation of the court or tribunal and who is in the room at the hearing",
                          "hearingRelevant":true,
                          "flagComment":false,
                          "defaultStatus":"Active",
                          "externallyAvailable":true,
                          "flagCode":"RA0047",
                          "childFlags":[
                            
                          ],
                          "isParent":false,
                          "Path":[
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
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
                            "Party",
                            "Reasonable adjustment",
                            "I need help communicating and understanding"
                          ]
                        }
                      ],
                      "isParent":true,
                      "Path":[
                        "Party",
                        "Reasonable adjustment"
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
                        "Party",
                        "Reasonable adjustment"
                      ]
                    }
                  ],
                  "isParent":true,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Vulnerable user",
                  "hearingRelevant":false,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0002",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Confidential party/address",
                  "hearingRelevant":true,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0004",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Unacceptable/disruptive customer behaviour",
                  "hearingRelevant":true,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0007",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Foreign national offender",
                  "hearingRelevant":true,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0012",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Unaccompanied minor",
                  "hearingRelevant":false,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0013",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Audio/Video Evidence",
                  "hearingRelevant":true,
                  "flagComment":true,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0014",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Language Interpreter",
                  "hearingRelevant":true,
                  "flagComment":true,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0015",
                  "listOfValuesLength":205,
                  "listOfValues":[
                    {
                      "key":"abr",
                      "value":"Brong"
                    },
                    {
                      "key":"ach",
                      "value":"Acholi"
                    },
                    {
                      "key":"afr",
                      "value":"Afrikaans"
                    },
                    {
                      "key":"aii",
                      "value":"Assyrian"
                    },
                    {
                      "key":"aka",
                      "value":"Akan"
                    },
                    {
                      "key":"amh",
                      "value":"Amharic"
                    },
                    {
                      "key":"ara",
                      "value":"Arabic"
                    },
                    {
                      "key":"ara-ame",
                      "value":"Arabic Middle Eastern"
                    },
                    {
                      "key":"ara-ana",
                      "value":"Arabic North African"
                    },
                    {
                      "key":"ara-mag",
                      "value":"Maghreb"
                    },
                    {
                      "key":"arq",
                      "value":"Algerian"
                    },
                    {
                      "key":"aze",
                      "value":"Azerbajani aka Nth Azari"
                    },
                    {
                      "key":"bal",
                      "value":"Baluchi"
                    },
                    {
                      "key":"bam",
                      "value":"Bambara"
                    },
                    {
                      "key":"bas",
                      "value":"Bassa"
                    },
                    {
                      "key":"bel",
                      "value":"Belorussian"
                    },
                    {
                      "key":"bem",
                      "value":"Benba / Bemba"
                    },
                    {
                      "key":"ben",
                      "value":"Bengali"
                    },
                    {
                      "key":"ben-bsy",
                      "value":"Bengali Sylheti"
                    },
                    {
                      "key":"ber",
                      "value":"Berber"
                    },
                    {
                      "key":"bfz",
                      "value":"Pahari"
                    },
                    {
                      "key":"bih",
                      "value":"Bihari"
                    },
                    {
                      "key":"bin",
                      "value":"Benin/Edo"
                    },
                    {
                      "key":"bjs",
                      "value":"Bajan / West Indian"
                    },
                    {
                      "key":"bnt-kic",
                      "value":"Kichagga"
                    },
                    {
                      "key":"bod",
                      "value":"Tibetan"
                    },
                    {
                      "key":"btn",
                      "value":"Bhutanese"
                    },
                    {
                      "key":"bul",
                      "value":"Bulgarian"
                    },
                    {
                      "key":"byn",
                      "value":"Bilin"
                    },
                    {
                      "key":"ceb",
                      "value":"Cebuano"
                    },
                    {
                      "key":"ces",
                      "value":"Czech"
                    },
                    {
                      "key":"cgg",
                      "value":"Rukiga"
                    },
                    {
                      "key":"che",
                      "value":"Chechen"
                    },
                    {
                      "key":"cmn",
                      "value":"Mandarin"
                    },
                    {
                      "key":"cpe",
                      "value":"Creole / English"
                    },
                    {
                      "key":"cpf",
                      "value":"Creole / French"
                    },
                    {
                      "key":"cpp",
                      "value":"Creole / Portuguese"
                    },
                    {
                      "key":"crp",
                      "value":"Creole / Spanish"
                    },
                    {
                      "key":"ctg",
                      "value":"Chittagonain"
                    },
                    {
                      "key":"cym",
                      "value":"Welsh"
                    },
                    {
                      "key":"dan",
                      "value":"Danish"
                    },
                    {
                      "key":"deu",
                      "value":"German"
                    },
                    {
                      "key":"din",
                      "value":"Dinka"
                    },
                    {
                      "key":"div",
                      "value":"Maldivian"
                    },
                    {
                      "key":"don",
                      "value":"Toura"
                    },
                    {
                      "key":"dua",
                      "value":"Douala"
                    },
                    {
                      "key":"dyu",
                      "value":"Dioula"
                    },
                    {
                      "key":"efi",
                      "value":"Efik"
                    },
                    {
                      "key":"ell",
                      "value":"Greek"
                    },
                    {
                      "key":"est",
                      "value":"Estonian"
                    },
                    {
                      "key":"ewe",
                      "value":"Ewe"
                    },
                    {
                      "key":"ewo",
                      "value":"Ewondo"
                    },
                    {
                      "key":"fas",
                      "value":"Farsi"
                    },
                    {
                      "key":"fat",
                      "value":"Fanti"
                    },
                    {
                      "key":"fij",
                      "value":"Fijian"
                    },
                    {
                      "key":"fra",
                      "value":"French"
                    },
                    {
                      "key":"fra-faf",
                      "value":"French African"
                    },
                    {
                      "key":"fra-far",
                      "value":"French Arabic"
                    },
                    {
                      "key":"ful",
                      "value":"Fula"
                    },
                    {
                      "key":"gaa",
                      "value":"Ga"
                    },
                    {
                      "key":"gjk",
                      "value":"Kachi"
                    },
                    {
                      "key":"glg",
                      "value":"Galician"
                    },
                    {
                      "key":"guj",
                      "value":"Gujarati"
                    },
                    {
                      "key":"hac",
                      "value":"Gorani"
                    },
                    {
                      "key":"hak",
                      "value":"Hakka"
                    },
                    {
                      "key":"hau",
                      "value":"Hausa"
                    },
                    {
                      "key":"hbs",
                      "value":"Serbo-Croatian"
                    },
                    {
                      "key":"heb",
                      "value":"Hebrew"
                    },
                    {
                      "key":"her",
                      "value":"Herero"
                    },
                    {
                      "key":"hin",
                      "value":"Hindi"
                    },
                    {
                      "key":"hnd",
                      "value":"Hindko"
                    },
                    {
                      "key":"hno",
                      "value":"Northern Hindko"
                    },
                    {
                      "key":"hun",
                      "value":"Hungarian"
                    },
                    {
                      "key":"hye",
                      "value":"Armenian"
                    },
                    {
                      "key":"ibb",
                      "value":"Ibibio"
                    },
                    {
                      "key":"ibo",
                      "value":"Igbo / Also Known As Ibo"
                    },
                    {
                      "key":"ilo",
                      "value":"Ilocano"
                    },
                    {
                      "key":"ind",
                      "value":"Indonesian"
                    },
                    {
                      "key":"ish",
                      "value":"Esan"
                    },
                    {
                      "key":"iso",
                      "value":"Isoko"
                    },
                    {
                      "key":"ita",
                      "value":"Italian"
                    },
                    {
                      "key":"jam",
                      "value":"Jamaican"
                    },
                    {
                      "key":"jav",
                      "value":"Javanese"
                    },
                    {
                      "key":"jpn",
                      "value":"Japanese"
                    },
                    {
                      "key":"kas",
                      "value":"Kashmiri"
                    },
                    {
                      "key":"kat",
                      "value":"Georgian"
                    },
                    {
                      "key":"kck",
                      "value":"Khalanga"
                    },
                    {
                      "key":"kfr",
                      "value":"Kutchi"
                    },
                    {
                      "key":"khm",
                      "value":"Khmer"
                    },
                    {
                      "key":"kik",
                      "value":"Kikuyu"
                    },
                    {
                      "key":"kin",
                      "value":"Kinyarwandan"
                    },
                    {
                      "key":"kir",
                      "value":"Kyrgyz"
                    },
                    {
                      "key":"knn",
                      "value":"Konkani"
                    },
                    {
                      "key":"kon",
                      "value":"Kikongo"
                    },
                    {
                      "key":"kor",
                      "value":"Korean"
                    },
                    {
                      "key":"kri",
                      "value":"Krio / Sierra Leone"
                    },
                    {
                      "key":"krn",
                      "value":"Sarpo"
                    },
                    {
                      "key":"kru",
                      "value":"Kru"
                    },
                    {
                      "key":"krx",
                      "value":"Karon"
                    },
                    {
                      "key":"kur-fey",
                      "value":"Feyli"
                    },
                    {
                      "key":"kur-kbr",
                      "value":"Kurdish Bardini"
                    },
                    {
                      "key":"kur-kkr",
                      "value":"Kurdish kurmanji"
                    },
                    {
                      "key":"kur-ksr",
                      "value":"Kurdish Sorani"
                    },
                    {
                      "key":"laj",
                      "value":"Lango"
                    },
                    {
                      "key":"lav",
                      "value":"Latvian"
                    },
                    {
                      "key":"lin",
                      "value":"Lingala"
                    },
                    {
                      "key":"lit",
                      "value":"Lithuanian"
                    },
                    {
                      "key":"lub",
                      "value":"Luba / Tshiluba"
                    },
                    {
                      "key":"lug",
                      "value":"Lugandan"
                    },
                    {
                      "key":"luo",
                      "value":"Luo"
                    },
                    {
                      "key":"luo-lah",
                      "value":"Luo Acholi"
                    },
                    {
                      "key":"luo-lky",
                      "value":"Luo Kenyan"
                    },
                    {
                      "key":"luo-llg",
                      "value":"Luo Lango"
                    },
                    {
                      "key":"mal",
                      "value":"Malayalam"
                    },
                    {
                      "key":"mar",
                      "value":"Marathi"
                    },
                    {
                      "key":"men",
                      "value":"Mende"
                    },
                    {
                      "key":"min",
                      "value":"Mina"
                    },
                    {
                      "key":"mkd",
                      "value":"Macedonian"
                    },
                    {
                      "key":"mku",
                      "value":"Malinke"
                    },
                    {
                      "key":"mkw",
                      "value":"Monokutuba"
                    },
                    {
                      "key":"mlt",
                      "value":"Maltese"
                    },
                    {
                      "key":"mnk",
                      "value":"Mandinka"
                    },
                    {
                      "key":"mon",
                      "value":"Mongolian"
                    },
                    {
                      "key":"msa",
                      "value":"Malay"
                    },
                    {
                      "key":"mya",
                      "value":"Burmese"
                    },
                    {
                      "key":"myx",
                      "value":"Masaaba"
                    },
                    {
                      "key":"nde",
                      "value":"Ndebele"
                    },
                    {
                      "key":"nep",
                      "value":"Nepali"
                    },
                    {
                      "key":"nld",
                      "value":"Dutch"
                    },
                    {
                      "key":"nld-nfl",
                      "value":"Flemish"
                    },
                    {
                      "key":"nld-nwf",
                      "value":"West Flemish"
                    },
                    {
                      "key":"nor",
                      "value":"Norwegian"
                    },
                    {
                      "key":"nya",
                      "value":"Chichewa"
                    },
                    {
                      "key":"nyn",
                      "value":"Nyankole"
                    },
                    {
                      "key":"nyo",
                      "value":"Runyoro"
                    },
                    {
                      "key":"nzi",
                      "value":"Nzima"
                    },
                    {
                      "key":"orm",
                      "value":"Oromo"
                    },
                    {
                      "key":"pag",
                      "value":"Pangasinan"
                    },
                    {
                      "key":"pam",
                      "value":"Pampangan"
                    },
                    {
                      "key":"pan",
                      "value":"Punjabi"
                    },
                    {
                      "key":"pan-pji",
                      "value":"Punjabi Indian"
                    },
                    {
                      "key":"pan-pjp",
                      "value":"Punjabi Pakistani"
                    },
                    {
                      "key":"pat",
                      "value":"Patois"
                    },
                    {
                      "key":"phr",
                      "value":"Pahari-Potwari"
                    },
                    {
                      "key":"pol",
                      "value":"Polish"
                    },
                    {
                      "key":"por",
                      "value":"Portuguese"
                    },
                    {
                      "key":"prs",
                      "value":"Dari"
                    },
                    {
                      "key":"pus",
                      "value":"Pushtu / Also Known As Pashto"
                    },
                    {
                      "key":"rmm",
                      "value":"Roma"
                    },
                    {
                      "key":"rom",
                      "value":"Romany"
                    },
                    {
                      "key":"ron",
                      "value":"Romanian"
                    },
                    {
                      "key":"ron-fmo",
                      "value":"Moldovan"
                    },
                    {
                      "key":"run",
                      "value":"Kirundi"
                    },
                    {
                      "key":"rus",
                      "value":"Russian"
                    },
                    {
                      "key":"scl",
                      "value":"Shina"
                    },
                    {
                      "key":"sgw",
                      "value":"Gurage"
                    },
                    {
                      "key":"sin",
                      "value":"Sinhalese"
                    },
                    {
                      "key":"skr",
                      "value":"Saraiki / Seraiki"
                    },
                    {
                      "key":"skt",
                      "value":"Sakata"
                    },
                    {
                      "key":"slk",
                      "value":"Slovak"
                    },
                    {
                      "key":"slv",
                      "value":"Slovenian"
                    },
                    {
                      "key":"sna",
                      "value":"Shona"
                    },
                    {
                      "key":"snd",
                      "value":"Sindhi"
                    },
                    {
                      "key":"snk",
                      "value":"Soninke"
                    },
                    {
                      "key":"som",
                      "value":"Somali"
                    },
                    {
                      "key":"spa",
                      "value":"Spanish"
                    },
                    {
                      "key":"spv",
                      "value":"Kosli, Sambalpuri"
                    },
                    {
                      "key":"sqi",
                      "value":"Albanian"
                    },
                    {
                      "key":"sus",
                      "value":"Susu"
                    },
                    {
                      "key":"swa",
                      "value":"Swahili"
                    },
                    {
                      "key":"swa-sbv",
                      "value":"Swahili Bravanese"
                    },
                    {
                      "key":"swa-skb",
                      "value":"Swahili Kibajuni"
                    },
                    {
                      "key":"swe",
                      "value":"Swedish"
                    },
                    {
                      "key":"swh",
                      "value":"Kiswahili"
                    },
                    {
                      "key":"syl",
                      "value":"Sylheti"
                    },
                    {
                      "key":"tai",
                      "value":"Taiwanese"
                    },
                    {
                      "key":"tam",
                      "value":"Tamil"
                    },
                    {
                      "key":"tel",
                      "value":"Telugu"
                    },
                    {
                      "key":"tem",
                      "value":"Temne"
                    },
                    {
                      "key":"teo",
                      "value":"Ateso"
                    },
                    {
                      "key":"tgl",
                      "value":"Tagalog"
                    },
                    {
                      "key":"tha",
                      "value":"Thai"
                    },
                    {
                      "key":"tig",
                      "value":"Tigre"
                    },
                    {
                      "key":"tir",
                      "value":"Tigrinya"
                    },
                    {
                      "key":"tsn",
                      "value":"Setswana"
                    },
                    {
                      "key":"ttj",
                      "value":"Rutoro"
                    },
                    {
                      "key":"tuk",
                      "value":"Turkmen"
                    },
                    {
                      "key":"tur",
                      "value":"Turkish"
                    },
                    {
                      "key":"twi",
                      "value":"Twi"
                    },
                    {
                      "key":"uig",
                      "value":"Uighur"
                    },
                    {
                      "key":"ukr",
                      "value":"Ukrainian"
                    },
                    {
                      "key":"urd",
                      "value":"Urdu"
                    },
                    {
                      "key":"urh",
                      "value":"Urohobo"
                    },
                    {
                      "key":"uzb",
                      "value":"Uzbek"
                    },
                    {
                      "key":"vie",
                      "value":"Vietnamese"
                    },
                    {
                      "key":"vsa",
                      "value":"Visayan"
                    },
                    {
                      "key":"wol",
                      "value":"Wolof"
                    },
                    {
                      "key":"xho",
                      "value":"Xhosa"
                    },
                    {
                      "key":"xog",
                      "value":"Lusoga"
                    },
                    {
                      "key":"yor",
                      "value":"Yoruba"
                    },
                    {
                      "key":"yue",
                      "value":"Cantonese"
                    },
                    {
                      "key":"zag",
                      "value":"Zaghawa"
                    },
                    {
                      "key":"zho-hok",
                      "value":"Hokkein"
                    },
                    {
                      "key":"zul",
                      "value":"Zulu"
                    },
                    {
                      "key":"zza",
                      "value":"Zaza"
                    }
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Litigation friend",
                  "hearingRelevant":true,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0017",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Lacking capacity",
                  "hearingRelevant":false,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0018",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
                  ]
                },
                {
                  "name":"Detained individual",
                  "hearingRelevant":false,
                  "flagComment":false,
                  "defaultStatus":"Active",
                  "externallyAvailable":false,
                  "flagCode":"PF0019",
                  "childFlags":[
                    
                  ],
                  "isParent":false,
                  "Path":[
                    "Party"
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
                    "Party"
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