# FAIR catalogue

## Modules
* Variables
  * [Variables](#Variables)
  * [RepeatedVariables](#RepeatedVariables)
  * [VariableValues](#VariableValues)
  * [Tables](#Tables)
  * [Vocabularies](#Vocabularies)
* Mappings
  * [VariableMappings](#VariableMappings)
  * [TableMappings](#TableMappings)
* Design
  * [CollectionEvents](#CollectionEvents)
  * [Subpopulations](#Subpopulations)
  * [Releases](#Releases)

## Module: Variables
### Table: Variables
> In molgenis both collected and harmonized variables are within same table. In Maelstrom split between dsch* and study* tables (recognizable from prefix)
* version    * molgenis: release.version<br/>&nbsp;&nbsp;&nbsp;&nbsp;_version of the schema that this variable is part of_

* schema
    * maelstrom: dataschema / study_dataset    * molgenis: release.resource<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name and version of a data schema (can be collected, or harmonized)_

* table
    * maelstrom: dataset (?)    * molgenis: table<br/>&nbsp;&nbsp;&nbsp;&nbsp;_table this variable is part of_

* name
    * maelstrom: dsch_var_name / study_specific_var_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the DataSchema variable_    * molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name of the variable, unique within a table_

* label
    * maelstrom: dsch_var_label<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Short description (label) of DataSchema variable_
* topics
    * maelstrom: study_specific_var_keywords<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Comments or keywords important to estimate harmonization status_    * molgenis: topics<br/>&nbsp;&nbsp;&nbsp;&nbsp;_annotation to indicate topic of the variable (e.g. using maelstrom areas of information)_

* format
    * maelstrom: dsch_var_type / study_specific_var_type<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Type of DataSchema variable_    * molgenis: format<br/>&nbsp;&nbsp;&nbsp;&nbsp;_type or format of the variable_

* unit
    * maelstrom: dsch_var_unit<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Measurement unit of DataSchema variable_    * molgenis: unit<br/>&nbsp;&nbsp;&nbsp;&nbsp;_unit ontology_

* collectionEvent    * molgenis: collectionEvent<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in case of protocolised data collection this defines the moment in time this variable is collected on_

* references    * molgenis: references<br/>&nbsp;&nbsp;&nbsp;&nbsp;_to define foreign key relationships between variables within or across tables_

* mandatory    * molgenis: mandatory<br/>&nbsp;&nbsp;&nbsp;&nbsp;_whether this variable is required_

* description
    * maelstrom: dsch_var_description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Full description of DataSchema variable to inform the precise nature and scientific meaning of the harmonized variables to be created. Full sentences._
> Can include: - The target population (e.g. for women only) - The context of measurement (e.g. self-reported measure, measure by a trained professional) - Information related to the protocol (e.g. measure taken when the participant is at rest) - The reference period (e.g. currently, in the past week) - Harmonization decisions taken to generate the DataSchema variable - General information from study-specific study design that would affect harmonization (e.g. Study A excluded participants who are diagnosed with cancer)

* order
    * maelstrom: dsch_index<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Rank of DataSchema variable (order in the list )_    * molgenis: order<br/>&nbsp;&nbsp;&nbsp;&nbsp;_to sort variables you can optionally add an order value_

* exampleValues    * molgenis: exampleValues

* vocabularies    * molgenis: vocabularies<br/>&nbsp;&nbsp;&nbsp;&nbsp;_link to vocabulary used. E.g. ICD-10_

### Table: RepeatedVariables
* release (see variable)
* table (see variable)
* name (see variable)
* isRepeatOf    * molgenis: isRepeatOf<br/>&nbsp;&nbsp;&nbsp;&nbsp;_reference to the definition of the variable that is being repeated_

### Table: VariableValues
* release
    * maelstrom: dataschema    * molgenis: release

* variable
    * maelstrom: dsch_var_name    * molgenis: variable

* value
    * maelstrom: dsch_var_cat_code / study_specific_var_cat<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Categories of the study-specific variable(s,) as copied from Questionnaires or Codebook_    * molgenis: value

* label
    * maelstrom: dsch_var_cat_label    * molgenis: label

* order    * molgenis: order

* isMissing
    * maelstrom: missing    * molgenis: isMissing

* ontologyTermIRI    * molgenis: ontologyTermIRI<br/>&nbsp;&nbsp;&nbsp;&nbsp;_reference to ontology term that defines this categorical value_

### Table: Tables
* schema
    * maelstrom: dataschema    * molgenis: release<br/>&nbsp;&nbsp;&nbsp;&nbsp;_resource + version this table is defined for_

* name
    * maelstrom: dsch name    * molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_unique name in the release_

* label    * molgenis: label<br/>&nbsp;&nbsp;&nbsp;&nbsp;_short human readible description_

* unitOfObservation    * molgenis: unitOfObservation<br/>&nbsp;&nbsp;&nbsp;&nbsp;_defines what each record in this table describes_

* topics    * molgenis: topics<br/>&nbsp;&nbsp;&nbsp;&nbsp;_enables grouping of table list into topic and to display tables in a tree_

* description    * molgenis: description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_description of the role/function of this table_

* numberOfRows    * molgenis: numberOfRows<br/>&nbsp;&nbsp;&nbsp;&nbsp;_count of the number of records in this table_

### Table: Vocabularies
* name
* code    * molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_identifier used for this code with the ontology_

* order    * molgenis: order

* definition    * molgenis: order

* comments    * molgenis: comments

* parent    * molgenis: parent<br/>&nbsp;&nbsp;&nbsp;&nbsp;_link to a more broad term_

* ontologyTermURI    * molgenis: ontologyTermURI

## Module: Mappings
### Table: VariableMappings
_Mappings from collected variables to standard/harmonized variables, optionally including ETL syntax._
* fromRelease
    * maelstrom: study_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Acronyme or Name of the study_
* fromResource
    * maelstrom: study_dataset<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Names of  the study-specific dataset_
* fromTable
* fromVariable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_optional, variable. Initially one may only define mapping between releases_
    * maelstrom: study_specific_var_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the study-specific variable(s)_
* toRelease
* toTable
    * maelstrom: harmonized_dataset_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the harmonized dataset_
* toVariable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in UI this is then one lookup field. In Excel it will be two columns. Value of 'targetVariable' is filtered based on selected 'targetCollection' and together be used for fkey(collection,dataset,name) in Variable._
    * maelstrom: dsch_var_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the DSch variable_
* match<br/>&nbsp;&nbsp;&nbsp;&nbsp;_e.g. 'complete, partial, planned, no-match'_
    * maelstrom: potential_harmo_status<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Potential/preliminary harmonization status for the study-specific variable(s)_
> 1-Complete: The study dataset can construct the DataSchema variable as defined. 2-Impossible: The study dataset cannot construct the DataSchema variable as defined. 3-Undetermined: the harmonization potential of this variable has not yet been evaluated or we are waiting for more information from studies. 4- Not Applicable: The harmonization status for this variable is not relevant.

* potential_harmo_status_detail
    * maelstrom: potential_harmo_status_detail<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Details on the preliminary/potential harmonization status for the study-specific variable(s) according to information from cookbook, protocal or questionnaire (not data)._
* status<br/>&nbsp;&nbsp;&nbsp;&nbsp;_whether harmonisation is still draft or final_
* harmo_rule_category
    * maelstrom: <br/>&nbsp;&nbsp;&nbsp;&nbsp;_Selected harmonization rule_
> Can be either: 1. Direct mapping; 2. Recode; 3. Case-when; 4. Operation; 5. Impossible; 6. Undertermined; 7. Others.

* description    * molgenis: description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_human readible description of the mapping_

* comments<br/>&nbsp;&nbsp;&nbsp;&nbsp;_additional notes and comments_
    * maelstrom: comment / harmo_comments<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Additional information provided on the harmonization status or other study-specific variables that might be of interest._
* study_specific_var_info
    * maelstrom: study_specific_var_info<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Copied informations from questionnaires or SoPs required to understand the study-specific variable(s)._
* syntax<br/>&nbsp;&nbsp;&nbsp;&nbsp;_formal definition of the mapping, ideally executable code_
    * maelstrom: harmo_rule<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Code of the selected harmonization rules_
* comments_internal_use
    * maelstrom: comments_internal_use<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Any comments or questions related to data exploration and harmonization rule_
> Data exploration should identify: - distribution of the data (can help to map unidentified skip patterns or error from data download or studies) (e.g. write the NA%) - Issues with how to properly address harmonized different variable types (e.g. decisions linked changing categorical into binary) - keywords used to try to identify the variables and indication of whether they were searched - different variables and arguments for their use Comments about the harmo rule may include:
the exploration must reflect the process of thinking of the harmonizer. They must explain reasons to: complete: explain reasons why you exclude other candidates, and why you kept the final variables impossible: explain reasons why you exclude all potential (data quality, no fit with definition...) or the fact that you found nothing (explicit keywords) undetermined: explain reasons why you hesitate between candidates and (potentially) next steps (contact project manager, contact PI, further investigation)
The validator will need all thinking process of the harmonizer to decide if they: agree: no explanation needed if exploration explicitly gave all reasons disagree: explain why you disagree, propose an altenative and discuss with harmonizer don't know: explain reasons why you hesitate to agree or disagree and (potentially) next steps (contact harmonizer, contact project manager, contact PI, further investigation)

### Table: TableMappings
_Mapping from collected tables to standard/harmonized tables, optionally including ETL syntaxes_
* fromRelease<br/>&nbsp;&nbsp;&nbsp;&nbsp;_release being mapped from, i.e. fromRelease.resource + fromRelease.version_
* fromTable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name of the table being mapped from_
* toRelease<br/>&nbsp;&nbsp;&nbsp;&nbsp;_release being mapped to, i.e. toRelease.resource + toRelease.version_
* toTable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name of the table being mapped to_
* order<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Order in which table ETLs should be executed for this source-target combination_
* description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_human readible description of the mapping_
* syntax<br/>&nbsp;&nbsp;&nbsp;&nbsp;_formal definition of the mapping, ideally executable code_
## Module: Design
### Table: CollectionEvents
* resource
    * maelstrom: Study    * molgenis: resource

* name
    * maelstrom: Name    * molgenis: name

* description
    * maelstrom: Description    * molgenis: description

* startYear
    * maelstrom: Start    * molgenis: startYear<br/>&nbsp;&nbsp;&nbsp;&nbsp;_period of collection start_

* endYear
    * maelstrom: End    * molgenis: endYear<br/>&nbsp;&nbsp;&nbsp;&nbsp;_period of collection end_

* ageMin    * molgenis: ageMin<br/>&nbsp;&nbsp;&nbsp;&nbsp;_minimum ages included, if applicable_

* ageMax    * molgenis: ageMax<br/>&nbsp;&nbsp;&nbsp;&nbsp;_maximum ages included, if applicable_

* noParticipants    * molgenis: noParticipants<br/>&nbsp;&nbsp;&nbsp;&nbsp;_number of participants sampled in this event_

* subpopulations    * molgenis: populations<br/>&nbsp;&nbsp;&nbsp;&nbsp;_(sub)populations that are targetted with this collection event_

* supplementaryInformation
    * maelstrom: Supplementary information    * molgenis: supplementaryInformation<br/>&nbsp;&nbsp;&nbsp;&nbsp;_any other information_

### Table: Subpopulations
* resource
    * maelstrom: Study    * molgenis: resource<br/>&nbsp;&nbsp;&nbsp;&nbsp;_E.g. 'Mothers in first trimester','newborns'_

* name
    * maelstrom: Name    * molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_E.g. 'Mothers in first trimester','newborns'_

* noParticipants
    * maelstrom: Number of Participants    * molgenis: noParticipants

* noParticipantsWithSamples
    * maelstrom: Number of Participants with Biological Samples    * molgenis: n/a

* sourcesOfRecruitment
    * maelstrom: Sources of Recruitment
* description
* InclusionCriteria
    * maelstrom: Selection Criteria    * molgenis: InclusionCriteria

* geographicRegion<br/>&nbsp;&nbsp;&nbsp;&nbsp;_e.g. province_
    * maelstrom: Territories (part of Selection criteria?)
* supplementaryInformation
    * maelstrom: Supplementary Information
### Table: Releases
* resource    * molgenis: resource<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Link to the resource of which contents has been released_

* version    * molgenis: version<br/>&nbsp;&nbsp;&nbsp;&nbsp;_version of the release_

* includesModels    * molgenis: includesModels<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in case multiple existing data models  are used to produce this release_

* includesDatabanks    * molgenis: includesResources<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in case of a network/study, it will  contain data of particular cohorts/databanks involved_

* date    * molgenis: date<br/>&nbsp;&nbsp;&nbsp;&nbsp;_date of the release_

* description    * molgenis: description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_notes specific to this release_

