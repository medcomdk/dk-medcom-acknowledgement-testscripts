The examples presented below are intended to be used together with the test protocol for receiving Acknowledgement. Testprotocols can be found on the [GitHub pages for Acknowledgement](https://medcomdk.github.io/dk-medcom-acknowledgement/#2-test-and-certification). All test examples are created by MedCom. 

#### Test patient/citizens
No test patient/citizens are used to test the Acknowledgement message. Any of MedComs test patients may be used from the application sending the message being acknowledged.

#### Test examples for receiving Acknowledgement
Below are the test examples presented for receiving an Acknowledgement. The examples may need to be adjusted to fit the references (MessageHeader.id and Provenance instance) from the message being acknowledged (e.g. HospitalNotification or CareCommunication).

|  Test example     |     Description     |
|---|---|
| [ACK_AA_A](./Bundle-b3c91031-85e6-4793-bca5-7b0de166fbf2.html) | An Acknowledgement with response code 'OK'  |
| [ACK_AR_B](./Bundle-fd618b85-9376-45ac-b0bd-67b0541f4fa4.html) | An Acknowledgement with response code 'transient error'   |
| [ACK_AE_C](./Bundle-32f3e314-8fcb-4147-87d4-fbed2ea2f741.html) | An Acknowledgement with response code 'fatal error'  |