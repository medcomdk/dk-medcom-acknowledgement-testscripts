
RuleSet: assertResponseCodeTest //Vurder om handlingen af testen er udført korrekt. 200 = okay, 201 = created.
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is okay or created."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.responseCode = "200,201"
* test[=].action[=].assert.operator = #in
* test[=].action[=].assert.warningOnly = false

RuleSet: assertResponseCodeSetup //Vurder om handlingen af setup'et er udført korrekt. 200 = okay, 201 = created.
* setup[=].action[+].assert.description = "Confirm that the returned HTTP status is okay or created."
* setup[=].action[=].assert.direction = #response
* setup[=].action[=].assert.responseCode = "200,201"
* setup[=].action[=].assert.operator = #in
* setup[=].action[=].assert.warningOnly = false

RuleSet: assertResponseNotFound //kan bruges til at bekræfte, at en meddelelse er slettet
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is not found."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.response = #notFound
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.warningOnly = false

RuleSet: assertValidateProfiles
* test[=].action[+].assert.description = "Validates the bundle against http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.validateProfileId = "acknowledgement"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderid(messageHeaderid)
* test[=].action[+].assert.description = "Confirm that MessageHeader.id from the previous message is contained to Provenance.entity.what.reference" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(entity.what.reference.contains('${{messageHeaderid}}')).exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderResponseCode(responseCode)
* test[=].action[+].assert.description = "Confirm that MessageHeader.responseCode equals to {responseCode}" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).response.code = '{responseCode}'"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPayload
* test[=].action[+].assert.description = "Confirm that the client request payload contains a Bundle resource type."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.resource = #Bundle 
* test[=].action[=].assert.warningOnly = false

RuleSet: assertOperationOutcome
* test[=].action[+].assert.description = "Confirm that a OperationOutcome instance is included, when the responseCode is 'transient-error' or 'fatal-error'"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).response.code = 'ok' or ((Bundle.entry.resource.ofType(MessageHeader).response.code = 'transient-error' or Bundle.entry.resource.ofType(MessageHeader).response.code = 'fatal-error') and Bundle.entry.resource.ofType(OperationOutcome).exists())"
* test[=].action[=].assert.warningOnly = false
// 
RuleSet: assertMessageHeaderEventCoding
* test[=].action[+].assert.description = "Confirm that the request resource contains the expected eventCoding.code."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).event.as(Coding).select(code = 'acknowledgement-message').allTrue()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertProvenanceActivityCode
* test[=].action[+].assert.description = "Confirm that the one Provenance instance contains the expected activity code."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(activity.coding.code = 'acknowledgement').count() = 1"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertProvenanceTarget
* test[=].action[+].assert.description = "Confirm that the target reference in Provenance equals MessageHeader.id"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference.contains(%resource.entry[0].resource.id)).exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertProvenanceEntityCount
* test[=].action[+].assert.description = "Confirm that 2 Provenance instances exists."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).count() = 2"
* test[=].action[=].assert.warningOnly = false 

RuleSet: assertProvenanceEntityRole(role)
* test[=].action[+].assert.description = "Confirm that the role is set to {role}. Not used when testing the first message in a stream"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference.contains(%resource.entry[0].resource.id)).entity.role"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{role}"
* test[=].action[=].assert.warningOnly = false

/* RuleSet: assertPatientIdentifier(patientID)
* test[=].action[+].assert.description = "Confirm that the patient.deceased is set to {deceased}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).identifier.value"
* test[=].action[=].assert.operator = #notFound
* test[=].action[=].assert.value = "{deceased}"
* test[=].action[=].assert.warningOnly = false */

RuleSet: assertBundleId(bundleid1, bundleid2)
* test[=].action[+].assert.description = "Confirm that the Bundle.id of the two Acknowledgements are different."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "'${{bundleid1}}' != '${{bundleid2}}'"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertBundleTimestamp(timestamp1, timestamp2)
* test[=].action[+].assert.description = "Confirm that the Bundle.timestamp of the two Acknowledgements are different."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "'${{timestamp1}}' != '${{timestamp2}}'"
* test[=].action[=].assert.warningOnly = false