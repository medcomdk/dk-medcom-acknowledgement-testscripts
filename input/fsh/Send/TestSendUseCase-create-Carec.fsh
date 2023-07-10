//OK
Instance: Acknowledgement_TestScript_OK-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok-carecommunication"
* description = "Send acknowledgement - OK"
* title = "Send acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message-ok.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(ok, 02, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message) 

//Fatal Error
Instance: Acknowledgement_TestScript_Fatal-error-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error-carecommunication"
* description = "Send acknowledgement - Fatal Error"
* title = "Send acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message-fatal-error.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(fatal-error, 02, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message) 

//Transient Error
Instance: Acknowledgement_TestScript_Transient-error-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error-carecommunication"
* description = "Send acknowledgement - Transient Error"
* title = "Send acknowledgement - Transient Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message-transient-error.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(transient-error, 02, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message) 


//OK - duplicate
Instance: Acknowledgement_TestScript_OK-duplicate-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok-duplicate-carecommunication"
* description = "Send duplicate acknowledgement - OK"
* title = "Send duplicate acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok-duplicate-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message-ok.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(new-message2, 03, /Fixtures/CareCommunication-fixture-new-message-ok.xml, bundleid-new-message2-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(ok, 02, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message) 
* insert readMessage(new-message2, 03, bundleid-new-message2-03)
* insert createMessage(ok, 04, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message2) 

//Fatal Error - duplicate
Instance: Acknowledgement_TestScript_Fatal-error-duplicate-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error-duplicate-carecommunication"
* description = "Send duplicate acknowledgement - Fatal Error"
* title = "Send duplicate acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error-duplicate-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message-fatal-error.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(new-message2, 03, /Fixtures/CareCommunication-fixture-new-message-fatal-error.xml, bundleid-new-message2-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(fatal-error, 02, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message) 
* insert readMessage(new-message2, 03, bundleid-new-message2-03)
* insert createMessage(fatal-error, 04, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message2) 

//Transient Error - duplicate
Instance: Acknowledgement_TestScript_Transient-error-duplicate-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error-duplicate-carecommunication"
* description = "Send acknowledgements, as response to duplicate messages - Transient Error, followed by OK"
* title = "Send acknowledgements, as response to duplicate messages - Transient Error, followed by OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error-duplicate-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message-transient-error.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(new-message2, 03, /Fixtures/CareCommunication-fixture-new-message-ok.xml, bundleid-new-message2-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(transient-error, 02, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message) 
* insert readMessage(new-message2, 03, bundleid-new-message2-03)
* insert createMessage(ok, 04, /Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-new-message2) 
