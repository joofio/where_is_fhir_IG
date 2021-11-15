
Instance: example-0-of-drug-med
InstanceOf: Substance
Usage: #example
Description: "Example of a drug with granularity 0"
Title:    "Example of drug with granularity 0"

//* identifier[0].system = "http://infarmed.pt"
//* identifier[0].value = "95"

* code = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* synonym[+] = "Acetaminophen"
* synonym[+] = "paracetamol"
* synonym[+] = "4-(Acetylamino)phenol"

* status = #active

* drugCharacteristic[domain].valueString = "human"
* drugCharacteristic[drugType].valueString = "small molecule"


Instance: example-1-of-drug-med
InstanceOf: PharmaceuticalProduct
Usage: #example
Description: "Example of a drug with granularity 1"
Title:    "Example of drug with granularity 1"

//* identifier[0].system = "http://infarmed.pt"
//* identifier[0].value = "950"

* code = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* doseForm = http://snomed.info/sct#421026006 "Oral Tablet"

* status = #active
* synonym[+] = "Paracetamol Oral Tablets 500 mg"
* amount.value = 500
* amount.unit = "mg" 

* relatedMedicationKnowledge[isaPharmaceuticalProductOf].reference = Reference(example-0-of-drug-med)
 
//* relatedMedicationKnowledge[interaction].reference = Reference(example-a-of-drug-med) 

* intendedRoute = http://snomed.info/sct#26643006  "Oral Route" 

Instance: example-2-of-drug-med
InstanceOf: MedicinalProduct
Usage: #example
Description: "Example of a drug with granularity 2"
Title:    "Example of drug with granularity 2"

//* identifier[0].system = "http://infarmed.pt"
//* identifier[0].value = "9500"

* status = #active

* synonym[+] = "Ben-U-Ron Oral Tablets 500 mg"

* drugCharacteristic[marketingAuthorization].valueString = "example"
* drugCharacteristic[marketingAuthorizationHolder].valueString = "Bene"
* drugCharacteristic[marketingAuthorizationStatus].valueString = "Aproved"
* drugCharacteristic[clinicalTrial].valueCodeableConcept = http://clinicaltrial-server.fhir.pt#1

* relatedMedicationKnowledge[isAMedicinalProductOf].reference = Reference(example-1-of-drug-med)

Instance: example-3-of-drug-med
InstanceOf: PackagedMedicinalProduct
Usage: #example
Description: "Example of a drug with granularity 3"
Title:    "Example of drug with granularity 3"

//* identifier[0].system = "http://infarmed.pt"
//* identifier[0].value = "95000"

* status = #active

* synonym[+] = "Ben-U-Ron Oral Tablets 500 mg Box of 20 tab"

* cost[+].type =  http://infarmed.pt/#xxx "official"
* cost[=].cost.value =  3.08 //costMoney r5
* cost[=].cost.currency  = http://iso.org/currency#EUR "Euro"   //cost.costMoney R5

* packaging[+].type = http://standardterms.edqm.eu/PAC#30009000 "Box"
* packaging[=].quantity.value  = 20
* packaging[=].quantity.unit = "tablets" 

* drugCharacteristic[batchNumber].valueString = "345-CE-123"


* relatedMedicationKnowledge[packagedFormOf].reference = Reference(example-2-of-drug-med)


Instance: vmp-1
InstanceOf: VMP
Usage: #example
Description: "Example of a VMP"
Title:    "Example of VMP"

//* identifier[0].system = "http://infarmed.pt"
//* identifier[0].value = "950"

* code = https://be.codes.product/vmp/#x "amlodipine 10 mg tablet (or.)"

* doseForm = http://snomed.info/sct#421026006 "Oral Tablet"

* status = #active
* synonym[+] = "amlodipine 10 mg tablet (or.)"
* amount.value = 10
* amount.unit = "mg" 

* relatedMedicationKnowledge[isaVirtualPharmaceuticalProductOf].reference = Reference(be-substance)
* relatedMedicationKnowledge[hasGroup].reference = Reference(be-vmpgroup)


* intendedRoute = http://snomed.info/sct#26643006  "Oral Route" 

Instance: be-vmpgroup
InstanceOf: BeVmpGroup
Usage: #example
Description: "Example of a VMP group"
Title:    "Example of VMP group"

//* identifier[0].system = "http://infarmed.pt"
//* identifier[0].value = "950"

* code = https://be.codes.product/vmpg/#x "amlodipine oraal 10 mg"

* status = #active
* synonym[+] = "amlodipine oraal 10 mg"
* amount.value = 10
* amount.unit = "mg" 



* intendedRoute = http://snomed.info/sct#26643006  "Oral Route" 


Instance: be-substance
InstanceOf: Substance
Usage: #example
Description: "Example of a substance for be market"
Title: "Example of a substance for be market"


* code = https://be.codes.product/substance/#x "amlodipine"


* status = #active

* drugCharacteristic[domain].valueString = "human"
* drugCharacteristic[drugType].valueString = "small molecule"

