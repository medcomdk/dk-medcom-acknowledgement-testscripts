//OK
Instance: Acknowledgement_TestScript_OK
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-ok"
* description = "Send acknowledgement - OK"
* title = "Send acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-ok" 
* name = "AcknowledgementTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/v200/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, false) 

//Fatal Error
Instance: Acknowledgement_TestScript_Fatal-error
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-fatal-error"
* description = "Send acknowledgement - Fatal Error"
* title = "Send acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-fatal-error" 
* name = "AcknowledgementTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/v200/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, false) 

//Transient Error
Instance: Acknowledgement_TestScript_Transient-error
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-send-transient-error"
* description = "Send acknowledgement - Transient Error"
* title = "Send acknowledgement - Transient Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-send-transient-error" 
* name = "AcknowledgementTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/Acknowledgement/v200/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, false) 
