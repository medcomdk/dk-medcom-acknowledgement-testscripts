RuleSet: variableEncounterResourceIdentifier(responseCode, number)
* variable[+].name = "encounterResourceIdentifier"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).identifier.value"
* variable[=].sourceId = "create-{responseCode}-{number}"

RuleSet: variableMessageHeaderId(responseCode, number)
* variable[+].name = "messageHeaderid-{responseCode}"
* variable[=].expression = "Bundle.entry[0].resource.id"
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
* variable[+].name = "bundleid-{responseCode}-{number}"
* variable[=].expression = "Bundle.id"
* variable[=].sourceId = "create-message-{responseCode}-{number}" 

RuleSet: variableBundleidSetup(responseCode, number)
* variable[+].name = "bundleid-{responseCode}-{number}"
* variable[=].expression = "Bundle.id"
* variable[=].sourceId = "create-{responseCode}-{number}" 

RuleSet: variableBundleTimestamp(responseCode, number)
* variable[+].name = "bundletimestamp-{responseCode}-{number}"
* variable[=].expression = "Bundle.timestamp"
* variable[=].sourceId = "create-message-{responseCode}-{number}" 

RuleSet: variableSearchParamIdentifier(responseCode)
* variable[+].name = "searchParamIdentifier-{responseCode}" 
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).id"
* variable[=].sourceId = "create-message-{responseCode}"

RuleSet: variableCorrectMessageID(responseCode, number)
* variable[+].name = "correctMessageID{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Bundle).id"
* variable[=].sourceId = "bundle-get-{responseCode}{number}"


/* RuleSet: variableEndpoint(responseCode, number) // skal kun anvendes ved den initielle meddelelse
* variable[+].name = "receiverEndpoint"
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[=].sourceId = "create-{responseCode}-{number}" */


