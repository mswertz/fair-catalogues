# FAIR catalogue

## Modules
* Module Variables
  * [Variables](#Variables)
  * [RepeatedVariables](#RepeatedVariables)
  * [VariableValues](#VariableValues)
  * [Tables](#Tables)
  * [Vocabularies](#Vocabularies)
* Module Mappings
  * [VariableMappings](#VariableMappings)
  * [TableMappings](#TableMappings)

## module Variables
### Table Variables
* schema - name and version of a data schema (can be collected, or harmonized)
    * Maelstrom: dataschema / study_dataset
    * Molgenis: release

* table - name of the table this variable is part of
    * Maelstrom: dataset (?)
    * Molgenis: table - table this variable is part of

* name - name of the variable. Consider to use meaningfull naming scheme.
    * Maelstrom: dsch_var_name / study_specific_var_name - Name of the DataSchema variable
    * Molgenis: name - name of the variable, unique within a table

* label
    * Maelstrom: dsch_var_label - Short description (label) of DataSchema variable
* topics
    * Molgenis: topics - annotation to indicate topic of the variable (e.g. using maelstrom areas of information)

* format - type or format of the variable
    * Maelstrom: dsch_var_type - Type of DataSchema variable
    * Molgenis: format - string,int,decimal,date,datetime etc

* unit - unit ontology
    * Maelstrom: dsch_var_unit - Measurement unit of DataSchema variable
    * Molgenis: unit - unit ontology

* collectionEvent - in case of protocolised data collection this defines the moment in time this variable is collected on
* references
    * Molgenis: references - to define foreign key relationships between variables within or across tables

* mandatory
    * Molgenis: mandatory - whether this variable is required

* description
    * Maelstrom: dsch_var_description - Full description of DataSchema variable to inform the precise nature and scientific meaning of the harmonized variables to be created. Full sentences.
~~~~
Can include: - The target population (e.g. for women only) - The context of measurement (e.g. self-reported measure, measure by a trained professional) - Information related to the protocol (e.g. measure taken when the participant is at rest) - The reference period (e.g. currently, in the past week) - Harmonization decisions taken to generate the DataSchema variable - General information from study-specific study design that would affect harmonization (e.g. Study A excluded participants who are diagnosed with cancer)
~~~~
* order - to sort variables you can optionally add an order value
    * Maelstrom: dsch_index - Rank of DataSchema variable (order in the list )
* exampleValues
    * Molgenis: exampleValues

* vocabularies
    * Molgenis: vocabularies - link to vocabulary used. E.g. ICD-10

### Table RepeatedVariables
* release (see variable)
* table (see variable)
* name (see variable)
* isRepeatOf - reference to the definition of the variable that is being repeated
    * Molgenis: isRepeatOf - reference to the definition of the variable that is being repeated

### Table VariableValues
* release
    * Maelstrom: dataschema
    * Molgenis: release

* variable
    * Maelstrom: dsch_var_name
    * Molgenis: variable

* value
    * Maelstrom: dsch_var_cat_code
    * Molgenis: value

* label
    * Maelstrom: dsch_var_cat_label
    * Molgenis: label

* order
    * Molgenis: order

* isMissing
    * Maelstrom: missing
    * Molgenis: isMissing

* ontologyTermIRI - reference to ontology term that defines this categorical value
    * Molgenis: ontologyTermIRI - reference to ontology term that defines this categorical value

### Table Tables
* schema
    * Maelstrom: dataschema
    * Molgenis: release - resource + version this table is defined for

* name - unique name in the release
    * Maelstrom: dsch name
* label - short human readible description
* unitOfObservation - defines what each record in this table describes
* contents - enables grouping of table list into topic and to display tables in a tree
* description - description of the role/function of this table
* numberOfRows - count of the numbe of records in this table
* mappings - list of mappings between this table and standard/harmonized tables
* mappingsTo
### Table Vocabularies
* name
* code - identifier used for this code with the ontology
* order
* definition
* comments
* parent - link to a more broad term
* ontologyTermURI
* children - link to more specific terms
* mg_tableclass
## module Mappings
### Table VariableMappings
* fromRelease
* fromTable
* fromVariable - optional, variable. Initially one may only define mapping between releases
* toRelease
* toTable
* toVariable - in UI this is then one lookup field. In Excel it will be two columns. Value of 'targetVariable' is filtered based on selected 'targetCollection' and together be used for fkey(collection,dataset,name) in Variable.
* match - e.g. 'complete, partial, planned, no-match'
* status - whether harmonisation is still draft or final
* description - human readible description of the mapping
* comments - additional notes and comments
* syntax - formal definition of the mapping, ideally executable code
### Table TableMappings
* fromRelease - release being mapped from, i.e. fromRelease.resource + fromRelease.version
* fromTable - name of the table being mapped from
* toRelease - release being mapped to, i.e. toRelease.resource + toRelease.version
* toTable - name of the table being mapped to
* order - Order in which table ETLs should be executed for this source-target combination
* description - human readible description of the mapping
* syntax - formal definition of the mapping, ideally executable code
