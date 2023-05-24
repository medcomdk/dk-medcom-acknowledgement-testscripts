The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification, both self- and live test. However, the test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts presented in this IG are all based on the [FHIR TestScript resource](https://www.hl7.org/fhir/testscript.html). They are created using FHIR ShortHand (FSH) and published using the FHIR publisher. 

### Before getting started

Use cases described in the [use case document](https://medcomdk.github.io/dk-medcom-acknowledgement/#11-use-cases) will be referenced throughout this IG and they are the basis for the tests. 

#### TouchStone and API
Before getting started with test script execution, it is necessary to have an account on TouchStone and to create a test system. Please follow [this guide to setup an account and test system](https://medcomdk.github.io/MedComLandingPage/assets/documents/TouchStoneGettingStarted.html).

#### Test script naming
The name of the test scripts is constituted by Acknowledgement_Testscript_[send/receive]-[type], describing the type of messages being sent, or recieved. 'Acknowledgement_Testscript_[send/receive]-' is not shown in the naming below.

#### Test examples/fixtures
Test examples are, in TouchStone testing, called fixtures. These fixtures are available in TouchStone. During setup of a test, all relevant fixtures will automatically be uploaded to server and be used during test. From a client application e.g. a vendor's system, it is possible to request relevant fixture. Fixtures will be used during sending and receiving of an Acknowledgement.

**Acknowledgements:** 
The fixture are sent between the 28th of February 2023 and 7th of March 2023. 

Fixtures used during the send test scripts are based on the following test patient, whereas no test patient is used in the receiving test scripts:
* Family name: Elmer
* CPR-nr.: 250947-9989 

#### Placeholders
[Placeholders](https://touchstone.aegis.net/touchstone/userguide/html/testscript-authoring/placeholders.html?highlight=placeholder) are used in the fixtures. Placeholders are used to ensure uniqueness in a fixture, and to ensure that vendors testing at the same time won't interfere with eachother. 

**UUID:**
Bundle.id will be generate during the test setup. The following line is included in the fixtures.
  `<id value="${UUID}"/>`
Which results in the following being generated during setup. For instance: 
  `<id value="b9b4818e-02de-4cc4-b418-d20cbc399006"/>`

#### GET operation
When searching for a HospitalNotification message, the GET operation requires Bundle.id to search for a specific message. 

In the test scripts, the search parameter are: 
  `"params": "/${bundleid-STIN}"`
Which results in the following variable to be used in the GET operation. For instance: 
  `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle/88e6c08e-10b6-4c7e-aa70-c0db45933e50`
#### Operations
When sending an Acknowledgement, a POST operation is used for all messages and when receiving an Acknowledgement or another message type, a GET operation is used for all tests. 

#### GET operation
When searching for an Acknowledgement message or another message type from an API, the GET operation requires Bundle.id to search for a specific message.

In the test scripts, the search parameter are: 
  `"params": "/${bundleid-STIN}"`
Which results in the following variable to be used in the GET operation. For instance: 
  `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle/88e6c08e-10b6-4c7e-aa70-c0db45933e50`

### Send Acknowledgement test scripts
When sending an Acknowledgement, a POST operation is required for all types of messages. All send test scripts requires that the system under test (SUT) has received a message beforehand. These are listed in the 'Precondition' columns in the tables, currently it can be a HospitalNotification, but will be extended to receiving af CareCommunication. The use case codes starts with 'R', as they represent the receiving system of a message other than an Acknowledgement, but is the sending system of an Acknowledgement. 

[Test scripts for test of sending use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/Acknowledgement/v200/Send/PatientFlows&activeOnly=false&contentEntry=TEST_SCRIPTS)

| **Type** | **Use case <br> code** | **Description** | **Response code** | **Received in advance** |
|---|---|---|---|---|
| **Acknowledging based on received HospitalNotifications** |||||
| [OK](./TestScript-acknowledgement-send-ok-hospitalnotification.html) | R.TC3 | Send acknowledgement - OK | ok | HospitalNotification (STIN) |
| [Fatal-error](./TestScript-acknowledgement-send-fatal-error-hospitalnotification.html) | R.TC3 | Send acknowledgement - Fatal Error | fatal-error | HospitalNotification (STIN)|
| [Transient-error](./TestScript-acknowledgement-send-transient-error-hospitalnotification.html) | R.TC3 | Send acknowledgement - Transient Error | transient-error | HospitalNotification (STIN) |
| [OK-duplicate](./TestScript-acknowledgement-send-ok-duplicate-hospitalnotification.html) | R.TC1.A3 | Send duplicate acknowledgement - OK | ok | Two identical <br> HospitalNotification (STIN)|
| [Fatal-error-duplicate](./TestScript-acknowledgement-send-fatal-error-duplicate-hospitalnotification.html) | R.TC1.A3 | Send duplicate acknowledgement - Fatal Error | fatal-error | Two identical <br> HospitalNotifications (STIN)|
| [Transient-error-duplicate](./TestScript-acknowledgement-send-transient-error-duplicate-hospitalnotificat.html) | R.TC1.A3 | Send acknowledgements, as response to duplicate <br> messages - Transient Error, followed by OK | transient-error <br> ok| Two identical <br> HospitalNotification (STIN)|
| **Acknowledging based on received CareCommunication** |  | |  |  |
| [TBD] |  | |  |  |


### Receive Acknowledgement message
When receiving an Acknowledgement, a GET operation is required for all tests. The use case codes starts with 'S', as they represent the sending system of a message other than an Acknowledgement, but is the receiving system of an Acknowledgement. 

#### Use Cases

[Test scripts for test of the recieving use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/Acknowledgement/v300/Receive/UseCases&activeOnly=false&contentEntry=TEST_SCRIPTS)

| **Type** | **Use case <br> code** | **Description** | **Response code** | **Received in advance** |
|---|---|---|---|---|
| [OK](./TestScript-acknowledgement-receive-ok.html) | S.TC3 | Receive acknowledgement - OK | ok | |
| [Fatal-error](./TestScript-acknowledgement-receive-fatal-error.html) | S.TC3.A1 | Receive acknowledgement - Fatal Error | fatal-error | |
| [Transient-error](./TestScript-acknowledgement-receive-transient-error.html) | S.TC3.A2 | Receive acknowledgement - Transient Error | transient-error | |
| [OK-duplicate](./TestScript-acknowledgement-receive-ok-duplicate.html) | S.TC5 | Receive duplicate acknowledgement - OK | ok | Acknowledgement |
| [Fatal-error-duplicate](./TestScript-acknowledgement-receive-fatal-error-duplicate.html) | S.TC5 | Receive duplicate acknowledgement - Fatal Error | fatal-error | Acknowledgement |
| [Transient-error-duplicate](./TestScript-acknowledgement-receive-transient-error-duplicate.html) | S.TC5 | Receive duplicate acknowledgement - Transient Error | transient-error | Acknowledgement |
| [Transient-error-OK](./TestScript-acknowledgement-receive-transient-error-ok.html) | S.TC5 | Receive acknowledgements - Transient Error, followed by OK | transient-error, ok | Acknowledgement |

