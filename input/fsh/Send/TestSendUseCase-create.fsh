//OK
Instance: Acknowledgement_TestScript_OK
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok"
* description = "Send acknowledgement - OK"
* title = "Send acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(ok, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 

//Fatal Error
Instance: Acknowledgement_TestScript_Fatal-error
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error"
* description = "Send acknowledgement - Fatal Error"
* title = "Send acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-fatal-error.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(fatal-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 

//Transient Error
Instance: Acknowledgement_TestScript_Transient-error
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error"
* description = "Send acknowledgement - Transient Error"
* title = "Send acknowledgement - Transient Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-transient-error.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(transient-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 


//OK - dublicate
Instance: Acknowledgement_TestScript_OK-dublicate
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok-dublicate"
* description = "Send dublicate acknowledgement - OK"
* title = "Send dublicate acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok-dublicate" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml, destinationUri-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(ok, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, destinationUri-STIN2, bundleid-STIN2)
* insert createMessage(ok, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 

//Fatal Error - dublicate
Instance: Acknowledgement_TestScript_Fatal-error-dublicate
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error-dublicate"
* description = "Send dublicate acknowledgement - Fatal Error"
* title = "Send dublicate acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error-dublicate" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-fatal-error.xml, destinationUri-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-fatal-error.xml)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(fatal-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, destinationUri-STIN2, bundleid-STIN2)
* insert createMessage(fatal-error, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 

//Transient Error - dublicate
Instance: Acknowledgement_TestScript_Transient-error-dublicate
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error-dublicate"
* description = "Send acknowledgements, as response to dublicate messages - Transient Error, followed by OK"
* title = "Send acknowledgements, as response to dublicate messages - Transient Error, followed by OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error-dublicate" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-transient-error.xml, destinationUri-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(transient-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, destinationUri-STIN2, bundleid-STIN2)
* insert createMessage(ok, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 
