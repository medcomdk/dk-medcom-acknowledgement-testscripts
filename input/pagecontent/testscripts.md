> Update this page!

The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification, both self- and live test. However, the test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts presented in this IG are all based on the [FHIR TestScript resource](https://www.hl7.org/fhir/testscript.html). They are created using FSH and published using the FHIR publisher. 

### Before getting started

Use cases described in the [use case document](https://medcomdk.github.io/dk-medcom-acknowledgement/#11-use-cases) will be referenced throughout this IG and they are the basis for the tests. 

#### TouchStone and API
Before getting started with test script execution, it is necessary to have an account on TouchStone and to create a test system. Please follow [this guide to setup an account and test system](https://medcomdk.github.io/MedComLandingPage/assets/documents/TouchStoneGettingStarted.html).

#### Test script naming

The name of the test scripts is constituted by Acknowledgement_Testscript_[send/receive]-[type], describing the type of messages being sent, or recieved. 'Acknowledgement_Testscript_[send/receive]-' is not shown in the naming below.

#### Test examples/fixtures
Test examples are, in TouchStone testing, called fixtures. These fixtures are uploaded to TouchStone. During setup of a test, all relevant fixtures will be uploadet to the server used during test. From a client application e.g. a vendor's system, it is possible to request relevant fixture. Fixtures will be used during sending and receiving of an Acknowledgement.

**Acknowledgements:** 
The fixture are sent between the 28th of February 2023 and 7th of March 2023. 

Fixtures used for during the send test scripts are based on the following test patient, whereas no test patient is used in the receiving test scripts:
* Family name: Elmer
* CPR-nr.: 250947-9989 

##### Placeholders
[Placeholders](https://touchstone.aegis.net/touchstone/userguide/html/testscript-authoring/placeholders.html?highlight=placeholder) are used in the fixtures. Placeholders are used to ensure uniqueness in a fixture, and to ensure that vendors testing at the same time won't interfere with eachother. 

**UUID:**
Bundle.id will be generate during the test setup. The following line is included in the fixtures.
  `<id value="${UUID}"/>`
Which results in the following being generated during setup. For instance: 
  `<id value="b9b4818e-02de-4cc4-b418-d20cbc399006"/>`

**Digits:**
MessageHeader.destination.endpoint and id of the MessageHeader, used in the elements MessageHeader.id, Provenance.target and Provenance.entity.what, includes the placeholder D6. 
The following line is included in the fixtures.
  `<id value="hefc6d95-6161-4493-99c9-f35948${D6}"/>` or `<endpoint value="https://sor2.sum.dsdn.dk/#id=953741000016009${D6}"/>`. <br>
Which results in the following being generated during setup. For instance: 
  `<id value="b9b4818e-02de-4cc4-b418-d20cbc399006"/>` or `<endpoint value="https://sor2.sum.dsdn.dk/#id=953741000016009"/>`

#### Operations

When sending an Acknowledgement, a POST operation is used for all messages and when receiving an Acknowledgement or another message type, a GET operation is used for all tests. 

#### GET operation
When searching for an Acknowledgement message or another message type, the GET operation requires a variable to search for a specific message. The variable used in the request is constituted by client information and two search parameters 1) the destination endpoint with placeholder ${D6}, and 2) the Bundle.id. 

In the test scripts, the search parameter are: <br>
  `"params": "?message.destination-uri=${destinationUri-STIN}&amp;member._id=${bundleid-STIN}"`
Which results in the following variable to be used in the GET operation. For instance: <br>
  `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle?message.destination-uri=https://sor2.sum.dsdn.dk/#id=953741000016009399006&amp;member._id=b9b4818e-02de-4cc4-b418-d20cbc399006`


### Send Acknowledgement test scripts
When sending an Acknowledgement, a POST operation is required for all types of messages. All send test scripts requires that the system under test (SUT) has received a message beforehand. These are listed in the 'Precondition' columns in the tables, at currently it can be either a HospitalNotification or CareCommunication, depending on the systems capabilities. 

#### Use Cases

[Test scripts for test of sending use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/Acknowledgement/v200/Send/PatientFlows&activeOnly=false&contentEntry=TEST_SCRIPTS)

| **Type** | **Use case <br> code** | **Description** | **Response code** | **Received in advance** |
|---|---|---|---|---|
| [OK](./TestScript-acknowledgement-send-ok.html) | R.TC3 | Send acknowledgement - OK | ok | HospitalNotification or <br> CareCommunication |
| [Fatal-error](./TestScript-acknowledgement-send-fatal-error.html) | R.TC3 | Send acknowledgement - Fatal Error | fatal-error | HospitalNotification or <br> CareCommunication |
| [Transient-error](./TestScript-acknowledgement-send-transient-error.html) | R.TC3 | Send acknowledgement - Transient Error | transient-error | HospitalNotification or <br> CareCommunication |


### Receive Acknowledgement message
When receiving an Acknowledgement, a GET operation is required for all tests. 

#### Use Cases

[Test scripts for test of the recieving use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/Acknowledgement/v300/Receive/UseCases&activeOnly=false&contentEntry=TEST_SCRIPTS)

| **Type** | **Use case <br> code** | **Description** | **Response code** | **Received in advance** |
|---|---|---|---|---|
| [OK](./TestScript-acknowledgement-receive-ok.html) | S.TC3 | Receive acknowledgement - OK | ok | HospitalNotification or <br> CareCommunication |
| [Fatal-error](./TestScript-acknowledgement-receive-fatal-error.html) | S.TC3.A1 | Receive acknowledgement - Fatal Error | fatal-error | HospitalNotification or <br> CareCommunication |
| [Transient-error](./TestScript-acknowledgement-receive-transient-error.html) | S.TC3.A2 | Receive acknowledgement - Transient Error | transient-error | HospitalNotification or <br> CareCommunication |

