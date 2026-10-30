# Stockholm Genomic Specimen - Inera FHIR Implementation Guide Template v2.3.0

## Resursprofil: Stockholm Genomic Specimen 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.core.template|current/StructureDefinition/stockholm-genomic-specimen)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-stockholm-genomic-specimen.csv), [Excel](../StructureDefinition-stockholm-genomic-specimen.xlsx), [Schematron](../StructureDefinition-stockholm-genomic-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stockholm-genomic-specimen",
  "url" : "https://fhir.inera.se/ig/template/StructureDefinition/stockholm-genomic-specimen",
  "version" : "2.3.0",
  "name" : "StockholmGenomicSpecimen",
  "title" : "Stockholm Genomic Specimen",
  "status" : "draft",
  "date" : "2026-10-30T09:20:10+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Profile to store the data about the specimen used in the genomic study. It is also used to relate both procedures and result files to a certain specimen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "purpose" : "The purpose of this profile is to represent the specimen used in the genomic study. It is used to relate patients, procedures and result files to a certain specimen.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "rules" : "closed"
      },
      "short" : "Requester and laboratory specimen identifiers",
      "definition" : "The identifier of the specimen. This is a required element and should always be populated when using this profile.",
      "requirements" : "Two identifiers are used to identify the specimen, one assigned by the requester and one assigned by the laboratory. The identifier can be used for both the requester and the laboratory as a search parameter",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:requester-sample-identifier",
      "path" : "Specimen.identifier",
      "sliceName" : "requester-sample-identifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Specimen.identifier:laboratory-sample-identifier",
      "path" : "Specimen.identifier",
      "sliceName" : "laboratory-sample-identifier",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
