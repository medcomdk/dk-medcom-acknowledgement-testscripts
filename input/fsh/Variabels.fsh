RuleSet: variableEncounterResourceIdentifier(responseCode, number)
* variable[+].name = "encounterResourceIdentifier"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).identifier.value"
* variable[=].sourceId = "create-{responseCode}-{number}"

RuleSet: variableMessageHeaderId(responseCode, number)
* variable[+].name = "messageHeaderid-{responseCode}"
* variable[=].expression = "Bundle.entry[0].fullUrl"
* variable[=].sourceId = "create-{responseCode}-{number}"

RuleSet: variableEpisodeOfCareIdentifier(responseCode)
* variable[+].name = "episodeOfCareID-{responseCode}"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).episodeOfCare.identifier.value"
* variable[=].sourceId = "create-message-{responseCode}"

/* RuleSet: variableDestinationUri(responseCode, number)
* variable[+].name = "destinationUri-{responseCode}"
* variable[=].expression = "Bundle.id"
* variable[=].sourceId = "create-{responseCode}-{number}" */

RuleSet: variableDestinationUri(responseCode, number)
* variable[+].name = "destinationUri-{responseCode}"
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[=].sourceId = "create-{responseCode}-{number}"

RuleSet: variableBundleid(responseCode, number)
* variable[+].name = "bundleid-{responseCode}"
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).id"
* variable[=].sourceId = "create-{responseCode}-{number}" 
 
RuleSet: variableSearchParamIdentifier(responseCode)
* variable[+].name = "searchParamIdentifier-{responseCode}" 
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).id"
* variable[=].sourceId = "create-message-{responseCode}"

RuleSet: variableCorrectMessageID(responseCode, number)
* variable[+].name = "correctMessageID{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Bundle).id"
* variable[=].sourceId = "bundle-get-{responseCode}{number}"

RuleSet: variableOccurredDateTime(responseCode) // skal kun anvendes ved den initielle meddelelse
* variable[+].name = "occurredDateTime-{responseCode}"
* variable[=].expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference = %resource.entry[0].fullUrl).occurred"
* variable[=].sourceId = "create-message-{responseCode}"

RuleSet: variableHospitalSOR(responseCode) 
* variable[+].name = "hospitalSOR-{responseCode}"
* variable[=].expression = "Bundle.entry.where(fullUrl = %resource.entry.resource[0].sender.reference).resource.identifier.where(system = 'urn:oid:1.2.208.176.1.1').value"
* variable[=].sourceId = "create-message-{responseCode}"

RuleSet: variableHospitalGLN(responseCode) 
* variable[+].name = "hospitalGLN-{responseCode}"
* variable[=].expression = "Bundle.entry.where(fullUrl = %resource.entry.resource[0].sender.reference).resource.identifier.where(system = 'https://www.gs1.org/gln').value"
* variable[=].sourceId = "create-message-{responseCode}"

/* RuleSet: variableEndpoint(responseCode, number) // skal kun anvendes ved den initielle meddelelse
* variable[+].name = "receiverEndpoint"
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[=].sourceId = "create-{responseCode}-{number}" */

RuleSet: variableEncounterDateTime(responseCode) // skal kun anvendes ved den initielle meddelelse
* variable[+].name = "encounterDateTime-{responseCode}"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).period.start"
* variable[=].sourceId = "create-message-{responseCode}"


RuleSet: variableTimeZone(responseCode) 
* variable[+].name = "encounterTimeZone-{responseCode}"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).period.start.substring(19,3)"
* variable[=].sourceId = "create-message-{responseCode}"


