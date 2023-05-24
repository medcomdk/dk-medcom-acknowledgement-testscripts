### Background

This Implementation Guide (IG) has two purposes: 1) to present test scripts for sending and receiving Acknowledgements v. 2.0.0 are included, and 2) to present test examples used in the testprotocol for receiving Acknowledgements.

The Acknowledgement message corresponds to returning a receipt of a delivered message. Every time a system receives a MedCom FHIR message, e.g. a HospitalNotification or a CareCommunication, it shall be acknowledged with a MedCom Acknowledgement message, stating whether the transfer was successful or not

Both test scripts and test examples are developed by MedCom. For more information, please click on the tabs above.

#### Relevant information

The following pages might be of interest when implementing Acknowledgement:
* [GitHub-pages for Acknowledgement](https://medcomdk.github.io/dk-medcom-acknowledgement)
  * [Testprotocol for sending and receiving Acknowledgement](https://medcomdk.github.io/dk-medcom-acknowledgement/#2-test-and-certification)
* [Implementation Guide for Acknowledgement v. 2.0.0](https://medcomfhir.dk/ig/Acknowledgement/2.0.0)
* [Governance for MedCom FHIR messaging](https://medcomdk.github.io/MedCom-FHIR-Communication/)

### Governance
A description of <a href="https://medcomdk.github.io/MedComLandingPage/#4-change-management-and-versioning">governance concerning change management and versioning of MedComs FHIR artefacts, can be found on here</a>.

#### Download
Content in this IG can be downloaded under [Download](downloads.html). The download includes both test scripts and test examples. It is also possible to download each artifact, on the individual page.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG there are some errors and warnings. An instance of the errors are: *Unable to resolve resource with reference '/FHIRSandbox/MedCom/Acknowledgement/v200/Receive/Fixtures/Acknowledgement-fixture-fatal-error.xml* and *Unable to resolve resource with reference 'http://medcomfhir.dk/ig/Acknowledgement/StructureDefinition/medcom-acknowledgement-message'*. The errors occur when creating a test script, as the fixture and profile are not reachable in the IG. However, they are reachable from TouchStone, why it is of less concern. For vendors who uses the test scripts locally should be aware of the error and e.g. create the fixtures and define the profile locally.

#### Contact
<a href="https://www.medcom.dk/">MedCom</a> is responsible for this IG.

If you have any questions, please contact <a href="mailto:fhir@medcom.dk">fhir@medcom.dk</a> or write to MedCom’s stream in <a href="https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup">Zulip</a>.