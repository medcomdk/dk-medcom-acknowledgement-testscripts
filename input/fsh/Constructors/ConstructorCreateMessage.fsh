RuleSet: createMessage(responseCode, number, fixture, role, messageHeaderid)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {responseCode}, {number})

/* 
Beskriver den profil, der valideres op mod
*/
* insert profileAcknowledgementMessage

/* 
Beskriver anvendte variable
*/
//* insert variableEncounterResourceIdentifier({responseCode}, {number})
//* insert variableMessageHeaderId({responseCode})
//* insert variableSearchParamIdentifier({responseCode})

/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({responseCode}, {number})

/* 
Beskriver den vurdering der sker af operationen.
*/
* insert assertResponseCodeTest
* insert assertPayload
* insert assertValidateProfiles
* insert assertMessageHeaderid({messageHeaderid})
* insert assertMessageHeaderEventCoding
* insert assertMessageHeaderResponseCode({responseCode})
* insert assertOperationOutcome
* insert assertProvenanceEntityRole({role})
* insert assertProvenanceTarget
* insert assertProvenanceEntityCount
* insert assertProvenanceActivityCode
//* insert assertOccurredTimeStamp({occurredDateTime})