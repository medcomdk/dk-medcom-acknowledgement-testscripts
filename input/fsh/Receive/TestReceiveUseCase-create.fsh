//Get ok
Instance: Acknowledgement_TestScript_receive-OK
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-receive-ok"
* description = "Receive Acknowledgement - OK"
* title = "Receive Acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-receive-ok" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(ok, 01, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-ok.xml, destinationUri-ok, bundleid-ok-01)
* insert readMessage(ok, 01, bundleid-ok-01)

 //Get ok X 2
Instance: Acknowledgement_TestScript_receive-ok-duplicate
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-receive-ok-duplicate"
* description = "Receive duplicate acknowledgement - OK"
* title = "Receive duplicate acknowledgement - OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-receive-ok-duplicate" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(ok, 01, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-ok.xml, destinationUri-ok, bundleid-ok-01)
* insert createMessageSetup(ok2, 02, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-ok.xml, bundleid-ok2-02)
* insert readMessage(ok, 01, bundleid-ok-01)
* insert readMessage(ok2, 02, bundleid-ok2-02)

 //Get fatal-error
Instance: Acknowledgement_TestScript_receive-fatal-error
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-receive-fatal-error"
* description = "Receive Acknowledgement - Fatal Error"
* title = "Receive Acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-receive-fatal-error" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(fatal-error, 01, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-fatal-error.xml, destinationUri-fatal-error, bundleid-fatal-error-01)
* insert readMessage(fatal-error, 01, bundleid-fatal-error-01)

 //Get fatal-error X 2
Instance: Acknowledgement_TestScript_receive-fatal-error-duplicate
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-receive-fatal-error-duplicate"
* description = "Receive duplicate acknowledgement - Fatal Error"
* title = "Receive duplicate acknowledgement - Fatal Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-receive-fatal-error-duplicate" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(fatal-error, 01, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-fatal-error.xml, destinationUri-fatal-error, bundleid-fatal-error-01)
* insert createMessageSetup(fatal-error2, 02, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-fatal-error.xml, bundleid-fatal-error2-02)
* insert readMessage(fatal-error, 01, bundleid-fatal-error-01)
* insert readMessage(fatal-error2, 02, bundleid-fatal-error2-02)


 //Get fatal-error
Instance: Acknowledgement_TestScript_receive-transient-error
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-receive-transient-error"
* description = "Receive Acknowledgement - Transient Error"
* title = "Receive Acknowledgement - Transient Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-receive-transient-error" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(transient-error, 01, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-transient-error.xml, destinationUri-transient-error, bundleid-transient-error-01)
* insert readMessage(transient-error, 01, bundleid-transient-error-01)

 //Get transient-error X 2
Instance: Acknowledgement_TestScript_receive-transient-error-duplicate
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-receive-transient-error-duplicate"
* description = "Receive duplicate acknowledgement - Transient Error"
* title = "Receive duplicate acknowledgement - Transient Error"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-receive-transient-error-duplicate" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(transient-error, 01, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-transient-error.xml, destinationUri-transient-error, bundleid-transient-error-01)
* insert createMessageSetup(transient-error2, 02, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-transient-error.xml, bundleid-transient-error2-02)
* insert readMessage(transient-error, 01, bundleid-transient-error-01)
* insert readMessage(transient-error2, 02, bundleid-transient-error2-02)

 //Get transient-error, ok
Instance: Acknowledgement_TestScript_receive-transient-error-ok
InstanceOf: TestScript
* insert Metadata
* id = "acknowledgement-receive-transient-error-ok"
* description = "Receive acknowledgements - Transient Error, followed by OK"
* title = "Receive acknowledgements - Transient Error, followed by OK"
* url = "http://medcomfhir.dk/ig/acknowledgementtestscript/acknowledgement-receive-transient-error-ok" 
* name = "AcknowledgementTestScript"
* insert createInitialMessageSetup(transient-error, 01, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-transient-error.xml, destinationUri-transient-error, bundleid-transient-error-01)
* insert createMessageSetup(ok, 02, /FHIRSandbox/MedCom/Acknowledgement/v200-receive/Fixtures/Acknowledgement-fixture-ok.xml, bundleid-ok-02)
* insert readMessage(transient-error, 01, bundleid-transient-error-01)
* insert readMessage(ok, 02, bundleid-ok-02)
