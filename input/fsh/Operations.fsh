RuleSet: operationDeleteSetup(destinationUri)
* setup[+].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup[=].action[=].operation.type.code = #delete
* setup[=].action[=].operation.resource = #Bundle
* setup[=].action[=].operation.description = "System-generated search and delete operations from conditional delete on Bundle MessageHeader.destination.endpoint"
* setup[=].action[=].operation.accept = #xml
* setup[=].action[=].operation.encodeRequestUrl = true
//* setup[=].action[=].operation.params = "?message.identifier=${{bundleid}}"
* setup[=].action[=].operation.params = "?message.destination-uri=${{destinationUri}}"

RuleSet: operationCreateSetup(responseCode, number)
* setup[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup[=].action[=].operation.type.code = #create
* setup[=].action[=].operation.resource = #Bundle
* setup[=].action[=].operation.description = "Create the Bundle resource in XML format on the destination server."
* setup[=].action[=].operation.accept = #xml
* setup[=].action[=].operation.contentType = #xml
* setup[=].action[=].operation.encodeRequestUrl = true
//* setup[=].action[=].operation.responseId = "create-message-{responseCode}"
* setup[=].action[=].operation.sourceId = "create-{responseCode}-{number}"

RuleSet: operationCreateMessage(responseCode, number)
* test[+].id = "message-create-{responseCode}-{number}" // Update hospitalnotification
* test[=].name = "Create an Acknowledegment {responseCode} Message {number}" 
* test[=].description = "Post Acknowledegment to the server." 
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #create
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Post an Acknowledegment"
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.responseId = "create-message-{responseCode}"
* test[=].action[=].operation.sourceId = "create-{responseCode}-{number}" 

RuleSet: operationUpdateCreateSetup(responseCode, number, bundleid)
* setup[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup[=].action[=].operation.type.code = #updateCreate
* setup[=].action[=].operation.resource = #Bundle
* setup[=].action[=].operation.description = "Update the Bundle.id in XML format on the destination server, so it corresponds to ${bundleid}."
* setup[=].action[=].operation.accept = #xml
* setup[=].action[=].operation.contentType = #xml
* setup[=].action[=].operation.encodeRequestUrl = true
* setup[=].action[=].operation.sourceId = "create-{responseCode}-{number}"
* setup[=].action[=].operation.params = "/${{bundleid}}"

RuleSet: operationReadMessage(responseCode, number, bundleid)
* test[+].id = "message-read-{responseCode}-{number}" // Update Acknowledegment
* test[=].name = "Get a {responseCode} message {number}"
* test[=].description = "GET a message. The expected response is a 200(OK) with a payload of the message resource in XML format."
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #read
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Receive message"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "/${{bundleid}}"
