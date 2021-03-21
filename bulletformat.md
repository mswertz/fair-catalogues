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

Synonyms:

* in maelstrom: dsch_variables / study_variables
* in molgenis: Variables<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a non-repeated variable, or of the first variable from a repeated range_

Columns:

* version
    * in molgenis: release.version<br/>&nbsp;&nbsp;&nbsp;&nbsp;_version of the schema that this variable is part of_

* schema
    * in maelstrom: dataschema / study_dataset
    * in molgenis: release.resource<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name and version of a data schema (can be collected, or harmonized)_

* table
    * in maelstrom: dataset (?)
    * in molgenis: table<br/>&nbsp;&nbsp;&nbsp;&nbsp;_table this variable is part of_

* name
    * in maelstrom: dsch_var_name / study_specific_var_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the DataSchema variable_
    * in molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name of the variable, unique within a table_

* label
    * in maelstrom: dsch_var_label<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Short description (label) of DataSchema variable_

* topics
    * in maelstrom: study_specific_var_keywords<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Comments or keywords important to estimate harmonization status_
    * in molgenis: topics<br/>&nbsp;&nbsp;&nbsp;&nbsp;_annotation to indicate topic of the variable (e.g. using maelstrom areas of information)_

* format
    * in maelstrom: dsch_var_type / study_specific_var_type<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Type of DataSchema variable_
    * in molgenis: format<br/>&nbsp;&nbsp;&nbsp;&nbsp;_type or format of the variable_

* unit
    * in maelstrom: dsch_var_unit<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Measurement unit of DataSchema variable_
    * in molgenis: unit<br/>&nbsp;&nbsp;&nbsp;&nbsp;_unit ontology_

* collectionEvent
    * in molgenis: collectionEvent<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in case of protocolised data collection this defines the moment in time this variable is collected on_

* references
    * in molgenis: references<br/>&nbsp;&nbsp;&nbsp;&nbsp;_to define foreign key relationships between variables within or across tables_

* mandatory
    * in molgenis: mandatory<br/>&nbsp;&nbsp;&nbsp;&nbsp;_whether this variable is required_

* description
    * in maelstrom: dsch_var_description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Full description of DataSchema variable to inform the precise nature and scientific meaning of the harmonized variables to be created. Full sentences._
> Can include: - The target population (e.g. for women only) - The context of measurement (e.g. self-reported measure, measure by a trained professional) - Information related to the protocol (e.g. measure taken when the participant is at rest) - The reference period (e.g. currently, in the past week) - Harmonization decisions taken to generate the DataSchema variable - General information from study-specific study design that would affect harmonization (e.g. Study A excluded participants who are diagnosed with cancer)

* order
    * in maelstrom: dsch_index<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Rank of DataSchema variable (order in the list )_
    * in molgenis: order<br/>&nbsp;&nbsp;&nbsp;&nbsp;_to sort variables you can optionally add an order value_

* exampleValues
    * in molgenis: exampleValues

* vocabularies
    * in molgenis: vocabularies<br/>&nbsp;&nbsp;&nbsp;&nbsp;_link to vocabulary used. E.g. ICD-10_

### Table: RepeatedVariables

Synonyms:

* in molgenis: <br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a repeated variable. Refers to another variable for its definition but has its own collection event._

Columns:

* release (see variable)

* table (see variable)

* name (see variable)

* isRepeatOf
    * in molgenis: isRepeatOf<br/>&nbsp;&nbsp;&nbsp;&nbsp;_reference to the definition of the variable that is being repeated_

### Table: VariableValues

Synonyms:

* in maelstrom: dsch categories
* in molgenis: VariableValues<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Listing of categorical value+label definition in case of a categorical variable_

Columns:

* release
    * in maelstrom: dataschema
    * in molgenis: release

* variable
    * in maelstrom: dsch_var_name
    * in molgenis: variable

* value
    * in maelstrom: dsch_var_cat_code / study_specific_var_cat<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Categories of the study-specific variable(s,) as copied from Questionnaires or Codebook_
    * in molgenis: value

* label
    * in maelstrom: dsch_var_cat_label
    * in molgenis: label

* order
    * in molgenis: order

* isMissing
    * in maelstrom: missing
    * in molgenis: isMissing

* ontologyTermIRI
    * in molgenis: ontologyTermIRI<br/>&nbsp;&nbsp;&nbsp;&nbsp;_reference to ontology term that defines this categorical value_

### Table: Tables

Synonyms:

* in maelstrom: Datasets
* in molgenis: Tables<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a table within a data release_

Columns:

* schema
    * in maelstrom: dataschema
    * in molgenis: release<br/>&nbsp;&nbsp;&nbsp;&nbsp;_resource + version this table is defined for_

* name
    * in maelstrom: dsch name
    * in molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_unique name in the release_

* label
    * in molgenis: label<br/>&nbsp;&nbsp;&nbsp;&nbsp;_short human readible description_

* unitOfObservation
    * in molgenis: unitOfObservation<br/>&nbsp;&nbsp;&nbsp;&nbsp;_defines what each record in this table describes_

* topics
    * in molgenis: topics<br/>&nbsp;&nbsp;&nbsp;&nbsp;_enables grouping of table list into topic and to display tables in a tree_

* description
    * in molgenis: description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_description of the role/function of this table_

* numberOfRows
    * in molgenis: numberOfRows<br/>&nbsp;&nbsp;&nbsp;&nbsp;_count of the number of records in this table_

### Table: Vocabularies

Synonyms:


Columns:

* name

* code
    * in molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_identifier used for this code with the ontology_

* order
    * in molgenis: order

* definition
    * in molgenis: order

* comments
    * in molgenis: comments

* parent
    * in molgenis: parent<br/>&nbsp;&nbsp;&nbsp;&nbsp;_link to a more broad term_

* ontologyTermURI
    * in molgenis: ontologyTermURI

## Module: Mappings
### Table: VariableMappings
_Mappings from collected variables to standard/harmonized variables, optionally including ETL syntax._

Synonyms:


Columns:

* fromRelease
    * in maelstrom: study_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Acronyme or Name of the study_

* fromResource
    * in maelstrom: study_dataset<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Names of  the study-specific dataset_

* fromTable

* fromVariable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_optional, variable. Initially one may only define mapping between releases_
    * in maelstrom: study_specific_var_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the study-specific variable(s)_

* toRelease

* toTable
    * in maelstrom: harmonized_dataset_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the harmonized dataset_

* toVariable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in UI this is then one lookup field. In Excel it will be two columns. Value of 'targetVariable' is filtered based on selected 'targetCollection' and together be used for fkey(collection,dataset,name) in Variable._
    * in maelstrom: dsch_var_name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Name of the DSch variable_

* match<br/>&nbsp;&nbsp;&nbsp;&nbsp;_e.g. 'complete, partial, planned, no-match'_
    * in maelstrom: potential_harmo_status<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Potential/preliminary harmonization status for the study-specific variable(s)_
> 1-Complete: The study dataset can construct the DataSchema variable as defined. 2-Impossible: The study dataset cannot construct the DataSchema variable as defined. 3-Undetermined: the harmonization potential of this variable has not yet been evaluated or we are waiting for more information from studies. 4- Not Applicable: The harmonization status for this variable is not relevant.

* potential_harmo_status_detail
    * in maelstrom: potential_harmo_status_detail<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Details on the preliminary/potential harmonization status for the study-specific variable(s) according to information from cookbook, protocal or questionnaire (not data)._

* status<br/>&nbsp;&nbsp;&nbsp;&nbsp;_whether harmonisation is still draft or final_

* harmo_rule_category
    * in maelstrom: <br/>&nbsp;&nbsp;&nbsp;&nbsp;_Selected harmonization rule_
> Can be either: 1. Direct mapping; 2. Recode; 3. Case-when; 4. Operation; 5. Impossible; 6. Undertermined; 7. Others.

* description
    * in molgenis: description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_human readible description of the mapping_

* comments<br/>&nbsp;&nbsp;&nbsp;&nbsp;_additional notes and comments_
    * in maelstrom: comment / harmo_comments<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Additional information provided on the harmonization status or other study-specific variables that might be of interest._

* study_specific_var_info
    * in maelstrom: study_specific_var_info<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Copied informations from questionnaires or SoPs required to understand the study-specific variable(s)._

* syntax<br/>&nbsp;&nbsp;&nbsp;&nbsp;_formal definition of the mapping, ideally executable code_
    * in maelstrom: harmo_rule<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Code of the selected harmonization rules_

* comments_internal_use
    * in maelstrom: comments_internal_use<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Any comments or questions related to data exploration and harmonization rule_
> Data exploration should identify: - distribution of the data (can help to map unidentified skip patterns or error from data download or studies) (e.g. write the NA%) - Issues with how to properly address harmonized different variable types (e.g. decisions linked changing categorical into binary) - keywords used to try to identify the variables and indication of whether they were searched - different variables and arguments for their use Comments about the harmo rule may include:
the exploration must reflect the process of thinking of the harmonizer. They must explain reasons to: complete: explain reasons why you exclude other candidates, and why you kept the final variables impossible: explain reasons why you exclude all potential (data quality, no fit with definition...) or the fact that you found nothing (explicit keywords) undetermined: explain reasons why you hesitate between candidates and (potentially) next steps (contact project manager, contact PI, further investigation)
The validator will need all thinking process of the harmonizer to decide if they: agree: no explanation needed if exploration explicitly gave all reasons disagree: explain why you disagree, propose an altenative and discuss with harmonizer don't know: explain reasons why you hesitate to agree or disagree and (potentially) next steps (contact harmonizer, contact project manager, contact PI, further investigation)

### Table: TableMappings
_Mapping from collected tables to standard/harmonized tables, optionally including ETL syntaxes_

Synonyms:


Columns:

* fromRelease<br/>&nbsp;&nbsp;&nbsp;&nbsp;_release being mapped from, i.e. fromRelease.resource + fromRelease.version_

* fromTable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name of the table being mapped from_

* toRelease<br/>&nbsp;&nbsp;&nbsp;&nbsp;_release being mapped to, i.e. toRelease.resource + toRelease.version_

* toTable<br/>&nbsp;&nbsp;&nbsp;&nbsp;_name of the table being mapped to_

* order<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Order in which table ETLs should be executed for this source-target combination_

* description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_human readible description of the mapping_

* syntax<br/>&nbsp;&nbsp;&nbsp;&nbsp;_formal definition of the mapping, ideally executable code_

## Module: Design
### Table: CollectionEvents

Synonyms:

* in maelstrom: Data Collection Events
* in molgenis: CollectionEvents<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of an action of data collection for a resource_

Columns:

* resource
    * in maelstrom: Study
    * in molgenis: resource

* name
    * in maelstrom: Name
    * in molgenis: name

* description
    * in maelstrom: Description
    * in molgenis: description

* startYear
    * in maelstrom: Start
    * in molgenis: startYear<br/>&nbsp;&nbsp;&nbsp;&nbsp;_period of collection start_

* endYear
    * in maelstrom: End
    * in molgenis: endYear<br/>&nbsp;&nbsp;&nbsp;&nbsp;_period of collection end_

* ageMin
    * in molgenis: ageMin<br/>&nbsp;&nbsp;&nbsp;&nbsp;_minimum ages included, if applicable_

* ageMax
    * in molgenis: ageMax<br/>&nbsp;&nbsp;&nbsp;&nbsp;_maximum ages included, if applicable_

* noParticipants
    * in molgenis: noParticipants<br/>&nbsp;&nbsp;&nbsp;&nbsp;_number of participants sampled in this event_

* subpopulations
    * in molgenis: populations<br/>&nbsp;&nbsp;&nbsp;&nbsp;_(sub)populations that are targetted with this collection event_

* supplementaryInformation
    * in maelstrom: Supplementary information
    * in molgenis: supplementaryInformation<br/>&nbsp;&nbsp;&nbsp;&nbsp;_any other information_

### Table: Subpopulations

Synonyms:

* in maelstrom: Populations
* in molgenis: <br/>&nbsp;&nbsp;&nbsp;&nbsp;_Subpopulations defined in this resource_

Columns:

* resource
    * in maelstrom: Study
    * in molgenis: resource<br/>&nbsp;&nbsp;&nbsp;&nbsp;_E.g. 'Mothers in first trimester','newborns'_

* name
    * in maelstrom: Name
    * in molgenis: name<br/>&nbsp;&nbsp;&nbsp;&nbsp;_E.g. 'Mothers in first trimester','newborns'_

* noParticipants
    * in maelstrom: Number of Participants
    * in molgenis: noParticipants

* noParticipantsWithSamples
    * in maelstrom: Number of Participants with Biological Samples
    * in molgenis: n/a

* sourcesOfRecruitment
    * in maelstrom: Sources of Recruitment

* description

* InclusionCriteria
    * in maelstrom: Selection Criteria
    * in molgenis: InclusionCriteria

* geographicRegion<br/>&nbsp;&nbsp;&nbsp;&nbsp;_e.g. province_
    * in maelstrom: Territories (part of Selection criteria?)

* supplementaryInformation
    * in maelstrom: Supplementary Information

### Table: Releases

Synonyms:

* in molgenis: Releases<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a data relase, in case of Model this will not include data_

Columns:

* resource
    * in molgenis: resource<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Link to the resource of which contents has been released_

* version
    * in molgenis: version<br/>&nbsp;&nbsp;&nbsp;&nbsp;_version of the release_

* includesModels
    * in molgenis: includesModels<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in case multiple existing data models  are used to produce this release_

* includesDatabanks
    * in molgenis: includesResources<br/>&nbsp;&nbsp;&nbsp;&nbsp;_in case of a network/study, it will  contain data of particular cohorts/databanks involved_

* date
    * in molgenis: date<br/>&nbsp;&nbsp;&nbsp;&nbsp;_date of the release_

* description
    * in molgenis: description<br/>&nbsp;&nbsp;&nbsp;&nbsp;_notes specific to this release_

