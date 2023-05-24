//OK
Instance: Acknowledgement_TestScript_OK-hospitalnotification
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok-hospitalnotification"
* description = "Send acknowledgement - OK"
* title = "Send acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok-hospitalnotification" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert createMessage(ok, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 

//Fatal Error
Instance: Acknowledgement_TestScript_Fatal-error-hospitalnotification
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error-hospitalnotification"
* description = "Send acknowledgement - Fatal Error"
* title = "Send acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error-hospitalnotification" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-fatal-error.xml, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert createMessage(fatal-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 

//Transient Error
Instance: Acknowledgement_TestScript_Transient-error-hospitalnotification
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error-hospitalnotification"
* description = "Send acknowledgement - Transient Error"
* title = "Send acknowledgement - Transient Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error-hospitalnotification" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-transient-error.xml, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert createMessage(transient-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 


//OK - duplicate
Instance: Acknowledgement_TestScript_OK-duplicate-hospitalnotification
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok-duplicate-hospitalnotification"
* description = "Send duplicate acknowledgement - OK"
* title = "Send duplicate acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok-duplicate-hospitalnotification" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml, destinationUri-STIN, bundleid-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml, bundleid-STIN2)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert createMessage(ok, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, bundleid-STIN2)
* insert createMessage(ok, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 

//Fatal Error - duplicate
Instance: Acknowledgement_TestScript_Fatal-error-duplicate-hospitalnotification
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error-duplicate-hospitalnotification"
* description = "Send duplicate acknowledgement - Fatal Error"
* title = "Send duplicate acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error-duplicate-hospitalnotification" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-fatal-error.xml, destinationUri-STIN, bundleid-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-fatal-error.xml, bundleid-STIN2)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert createMessage(fatal-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, bundleid-STIN2)
* insert createMessage(fatal-error, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 

//Transient Error - duplicate
Instance: Acknowledgement_TestScript_Transient-error-duplicate-hospitalnotification
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error-duplicate-hospitalnotificat"
* description = "Send acknowledgements, as response to duplicate messages - Transient Error, followed by OK"
* title = "Send acknowledgements, as response to duplicate messages - Transient Error, followed by OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error-duplicate-hospitalnotificat" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-transient-error.xml, destinationUri-STIN, bundleid-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/HospitalNotification-fixture-STIN-ok.xml, bundleid-STIN2)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert createMessage(transient-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, bundleid-STIN2)
* insert createMessage(ok, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 
