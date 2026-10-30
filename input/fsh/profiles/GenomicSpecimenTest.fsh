Profile: StockholmGenomicSpecimen
Parent: Specimen
Id: stockholm-genomic-specimen
Title: "Stockholm Genomic Specimen"
Description: "Profile to store the data about the specimen used in the genomic study. It is also used to relate both procedures and result files to a certain specimen."
* ^version = "1.0.0-alpha.1"
* ^status = #draft
* ^purpose = "The purpose of this profile is to represent the specimen used in the genomic study. It is used to relate patients, procedures and result files to a certain specimen."

* identifier 1..* MS
  * ^short = "Requester and laboratory specimen identifiers"
  * ^definition = "The identifier of the specimen. This is a required element and should always be populated when using this profile."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #closed
* identifier ^requirements = "Two identifiers are used to identify the specimen, one assigned by the requester and one assigned by the laboratory. The identifier can be used for both the requester and the laboratory as a search parameter"
* identifier contains
    requester-sample-identifier 0..* and
    laboratory-sample-identifier 0..*
* subject 1.. MS
// subject only Reference(Patient)
// subject ^short = "Patient from whom specimen was collected"
// subject ^definition = "Links specimen to the patient/proband used throughout the genomic case."
