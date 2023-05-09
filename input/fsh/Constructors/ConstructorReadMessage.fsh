RuleSet: readMessage(type, number, destinationUri, bundleid)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver den profil, der valideres op mod
*/
* insert profileAcknowledgementMessage

/* 
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
* insert operationReadMessage({type}, {number}, {destinationUri}, {bundleid})

/* 
Beskriver den vurdering der sker af testen. Er det gået ok?
*/
* insert assertResponseCodeTest

