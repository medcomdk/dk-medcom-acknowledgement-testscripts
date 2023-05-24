/* //OK
Instance: Acknowledgement_TestScript_OK-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok-carecommunication"
* description = "Send acknowledgement - OK"
* title = "Send acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-ok.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(ok, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 

//Fatal Error
Instance: Acknowledgement_TestScript_Fatal-error-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error-carecommunication"
* description = "Send acknowledgement - Fatal Error"
* title = "Send acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-fatal-error.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(fatal-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 

//Transient Error
Instance: Acknowledgement_TestScript_Transient-error-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error-carecommunication"
* description = "Send acknowledgement - Transient Error"
* title = "Send acknowledgement - Transient Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-transient-error.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(transient-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 


//OK - duplicate
Instance: Acknowledgement_TestScript_OK-duplicate-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok-duplicate-carecommunication"
* description = "Send duplicate acknowledgement - OK"
* title = "Send duplicate acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok-duplicate-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-ok.xml, destinationUri-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-ok.xml)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(ok, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, destinationUri-STIN2, bundleid-STIN2)
* insert createMessage(ok, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 

//Fatal Error - duplicate
Instance: Acknowledgement_TestScript_Fatal-error-duplicate-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error-duplicate-carecommunication"
* description = "Send duplicate acknowledgement - Fatal Error"
* title = "Send duplicate acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error-duplicate-carecommunication" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-fatal-error.xml, destinationUri-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-fatal-error.xml)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(fatal-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, destinationUri-STIN2, bundleid-STIN2)
* insert createMessage(fatal-error, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 

//Transient Error - duplicate
Instance: Acknowledgement_TestScript_Transient-error-duplicate-carecommunication
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error-duplicate-hospitalnotificat"
* description = "Send acknowledgements, as response to duplicate messages - Transient Error, followed by OK"
* title = "Send acknowledgements, as response to duplicate messages - Transient Error, followed by OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error-duplicate-hospitalnotificat" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-transient-error.xml, destinationUri-STIN)
* insert createMessageSetup(STIN2, 03, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/CareCommunicationfixture-STIN-ok.xml)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert createMessage(transient-error, 02, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN) 
* insert readMessage(STIN2, 03, destinationUri-STIN2, bundleid-STIN2)
* insert createMessage(ok, 04, /FHIRSandbox/MedCom/Acknowledgement/draft/Send/Fixtures/Acknowledgement-fixture.xml, revision, messageHeaderid-STIN2) 
 */