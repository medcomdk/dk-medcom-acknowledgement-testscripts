RuleSet: readMessage(responseCode, number, bundleid)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
* insert operationReadMessage({responseCode}, {number}, {bundleid})

/* 
Beskriver den vurdering der sker af testen. Er det gået ok?
*/
* insert assertResponseCodeTest

