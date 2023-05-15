RuleSet: createInitialMessage(responseCode, number, fixture)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver den profil, der valideres op mod
*/
* insert profileAcknowledgementMessage

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {responseCode}, {number})

/* 
Beskriver anvendte variable
*/ 
//* insert variableEncounterResourceIdentifier({responseCode}, {number})
* insert variableEpisodeOfCareIdentifier({responseCode})
* insert variableSearchParamIdentifier({responseCode})
* insert variableOccurredDateTime({responseCode})

/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({responseCode}, {number})

/* 
Beskriver den vurdering der sker af operationen
*/
* insert assertValidateProfiles
* insert assertResponseCodeTest
* insert assertPayload
* insert assertMessageHeaderEventCoding
* insert assertProvenanceTarget


