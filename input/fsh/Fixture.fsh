/*
PARAM: 
    number: testflow sequent number 
    fixture: Path to fixture
*/

RuleSet: fixtureCreateMessage(fixture, responseCode, number)
* fixture[+].id = "create-{responseCode}-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixture}"