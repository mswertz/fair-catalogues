# FAIR catalogue - minimum inforation model

## Modules
* Variables
    * [Variables](#variables)
    * [RepeatedVariables](#repeatedvariables)
    * [VariableValues](#variablevalues)
    * [Tables](#tables)
    * [Vocabularies](#vocabularies)
* Mappings
    * [VariableMappings](#variablemappings)
    * [TableMappings](#tablemappings)
* Design
    * [CollectionEvents](#collectionevents)
    * [Subpopulations](#subpopulations)
    * [Releases](#releases)

## Module: Variables

### Table: Variables

Synonyms:

* in maelstrom: dsch_variables / study_variables
* in molgenis: Variables<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a non-repeated variable, or of the first variable from a repeated range_


|element |mapping |description |
|--------|--------|------------|
| version | Molgenis: release.version<br/> | Molgenis: version of the schema that this variable is part of<br/>  |
| schema | Maelstrom: dataschema / study_dataset<br/>Molgenis: release.resource<br/> | Maelstrom: <br/>Molgenis: name and version of a data schema (can be collected, or harmonized)<br/>  |
| table | Maelstrom: dataset (?)<br/>Molgenis: table<br/> | Maelstrom: <br/>Molgenis: table this variable is part of<br/>  |
| name | Maelstrom: dsch_var_name / study_specific_var_name<br/>Molgenis: name<br/> | Maelstrom: Name of the DataSchema variable<br/>Molgenis: name of the variable, unique within a table<br/>  |
| label | Maelstrom: dsch_var_label<br/> | Maelstrom: Short description (label) of DataSchema variable<br/>  |
| topics | Maelstrom: study_specific_var_keywords<br/>Molgenis: topics<br/> | Maelstrom: Comments or keywords important to estimate harmonization status<br/>Molgenis: annotation to indicate topic of the variable (e.g. using maelstrom areas of information)<br/>  |
| format | Maelstrom: dsch_var_type / study_specific_var_type<br/>Molgenis: format<br/> | Maelstrom: Type of DataSchema variable<br/>Molgenis: type or format of the variable<br/>  |
| unit | Maelstrom: dsch_var_unit<br/>Molgenis: unit<br/> | Maelstrom: Measurement unit of DataSchema variable<br/>Molgenis: unit ontology<br/>  |
| collectionEvent | Molgenis: collectionEvent<br/> | Molgenis: in case of protocolised data collection this defines the moment in time this variable is collected on<br/>  |
| references | Molgenis: references<br/> | Molgenis: to define foreign key relationships between variables within or across tables<br/>  |
| mandatory | Molgenis: mandatory<br/> | Molgenis: whether this variable is required<br/>  |
| description | Maelstrom: dsch_var_description<br/> | Maelstrom: Full description of DataSchema variable to inform the precise nature and scientific meaning of the harmonized variables to be created. Full sentences.<br/>  |
| order | Maelstrom: dsch_index<br/>Molgenis: order<br/> | Maelstrom: Rank of DataSchema variable (order in the list )<br/>Molgenis: to sort variables you can optionally add an order value<br/>  |
| exampleValues | Molgenis: exampleValues<br/> | Molgenis: <br/>  |
| vocabularies | Molgenis: vocabularies<br/> | Molgenis: link to vocabulary used. E.g. ICD-10<br/>  |
### Table: RepeatedVariables

Synonyms:

* in molgenis: <br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a repeated variable. Refers to another variable for its definition but has its own collection event._


|element |mapping |description |
|--------|--------|------------|
| release (see variable) |  |   |
| table (see variable) |  |   |
| name (see variable) |  |   |
| isRepeatOf | Molgenis: isRepeatOf<br/> | Molgenis: reference to the definition of the variable that is being repeated<br/>  |
### Table: VariableValues

Synonyms:

* in maelstrom: dsch categories
* in molgenis: VariableValues<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Listing of categorical value+label definition in case of a categorical variable_


|element |mapping |description |
|--------|--------|------------|
| release | Maelstrom: dataschema<br/>Molgenis: release<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| variable | Maelstrom: dsch_var_name<br/>Molgenis: variable<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| value | Maelstrom: dsch_var_cat_code / study_specific_var_cat<br/>Molgenis: value<br/> | Maelstrom: Categories of the study-specific variable(s,) as copied from Questionnaires or Codebook<br/>Molgenis: <br/>  |
| label | Maelstrom: dsch_var_cat_label<br/>Molgenis: label<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| order | Molgenis: order<br/> | Molgenis: <br/>  |
| isMissing | Maelstrom: missing<br/>Molgenis: isMissing<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| ontologyTermIRI | Molgenis: ontologyTermIRI<br/> | Molgenis: reference to ontology term that defines this categorical value<br/>  |
### Table: Tables

Synonyms:

* in maelstrom: Datasets
* in molgenis: Tables<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a table within a data release_


|element |mapping |description |
|--------|--------|------------|
| schema | Maelstrom: dataschema<br/>Molgenis: release<br/> | Maelstrom: <br/>Molgenis: resource + version this table is defined for<br/>  |
| name | Maelstrom: dsch name<br/>Molgenis: name<br/> | Maelstrom: <br/>Molgenis: unique name in the release<br/>  |
| label | Molgenis: label<br/> | Molgenis: short human readible description<br/>  |
| unitOfObservation | Molgenis: unitOfObservation<br/> | Molgenis: defines what each record in this table describes<br/>  |
| topics | Molgenis: topics<br/> | Molgenis: enables grouping of table list into topic and to display tables in a tree<br/>  |
| description | Molgenis: description<br/> | Molgenis: description of the role/function of this table<br/>  |
| numberOfRows | Molgenis: numberOfRows<br/> | Molgenis: count of the number of records in this table<br/>  |
### Table: Vocabularies

Synonyms:



|element |mapping |description |
|--------|--------|------------|
| name |  |   |
| code | Molgenis: name<br/> | Molgenis: identifier used for this code with the ontology<br/>  |
| order | Molgenis: order<br/> | Molgenis: <br/>  |
| definition | Molgenis: order<br/> | Molgenis: <br/>  |
| comments | Molgenis: comments<br/> | Molgenis: <br/>  |
| parent | Molgenis: parent<br/> | Molgenis: link to a more broad term<br/>  |
| ontologyTermURI | Molgenis: ontologyTermURI<br/> | Molgenis: <br/>  |

## Module: Mappings

### Table: VariableMappings

Synonyms:



|element |mapping |description |
|--------|--------|------------|
| fromRelease | Maelstrom: study_name<br/> | Maelstrom: Acronyme or Name of the study<br/>  |
| fromResource | Maelstrom: study_dataset<br/> | Maelstrom: Names of  the study-specific dataset<br/>  |
| fromTable |  |   |
| fromVariable | Maelstrom: study_specific_var_name<br/> | Maelstrom: Name of the study-specific variable(s)<br/>  |
| toRelease |  |   |
| toTable | Maelstrom: harmonized_dataset_name<br/> | Maelstrom: Name of the harmonized dataset<br/>  |
| toVariable | Maelstrom: dsch_var_name<br/> | Maelstrom: Name of the DSch variable<br/>  |
| match | Maelstrom: potential_harmo_status<br/> | Maelstrom: Potential/preliminary harmonization status for the study-specific variable(s)<br/>  |
| potential_harmo_status_detail | Maelstrom: potential_harmo_status_detail<br/> | Maelstrom: Details on the preliminary/potential harmonization status for the study-specific variable(s) according to information from cookbook, protocal or questionnaire (not data).<br/>  |
| status |  |   |
| harmo_rule_category | Maelstrom: <br/> | Maelstrom: Selected harmonization rule<br/>  |
| description | Molgenis: description<br/> | Molgenis: human readible description of the mapping<br/>  |
| comments | Maelstrom: comment / harmo_comments<br/> | Maelstrom: Additional information provided on the harmonization status or other study-specific variables that might be of interest.<br/>  |
| study_specific_var_info | Maelstrom: study_specific_var_info<br/> | Maelstrom: Copied informations from questionnaires or SoPs required to understand the study-specific variable(s).<br/>  |
| syntax | Maelstrom: harmo_rule<br/> | Maelstrom: Code of the selected harmonization rules<br/>  |
| comments_internal_use | Maelstrom: comments_internal_use<br/> | Maelstrom: Any comments or questions related to data exploration and harmonization rule<br/>  |
### Table: TableMappings

Synonyms:



|element |mapping |description |
|--------|--------|------------|
| fromRelease |  |   |
| fromTable |  |   |
| toRelease |  |   |
| toTable |  |   |
| order |  |   |
| description |  |   |
| syntax |  |   |

## Module: Design

### Table: CollectionEvents

Synonyms:

* in maelstrom: Data Collection Events
* in molgenis: CollectionEvents<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of an action of data collection for a resource_


|element |mapping |description |
|--------|--------|------------|
| resource | Maelstrom: Study<br/>Molgenis: resource<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| name | Maelstrom: Name<br/>Molgenis: name<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| description | Maelstrom: Description<br/>Molgenis: description<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| startYear | Maelstrom: Start<br/>Molgenis: startYear<br/> | Maelstrom: <br/>Molgenis: period of collection start<br/>  |
| endYear | Maelstrom: End<br/>Molgenis: endYear<br/> | Maelstrom: <br/>Molgenis: period of collection end<br/>  |
| ageMin | Molgenis: ageMin<br/> | Molgenis: minimum ages included, if applicable<br/>  |
| ageMax | Molgenis: ageMax<br/> | Molgenis: maximum ages included, if applicable<br/>  |
| noParticipants | Molgenis: noParticipants<br/> | Molgenis: number of participants sampled in this event<br/>  |
| subpopulations | Molgenis: populations<br/> | Molgenis: (sub)populations that are targetted with this collection event<br/>  |
| supplementaryInformation | Maelstrom: Supplementary information<br/>Molgenis: supplementaryInformation<br/> | Maelstrom: <br/>Molgenis: any other information<br/>  |
### Table: Subpopulations

Synonyms:

* in maelstrom: Populations
* in molgenis: <br/>&nbsp;&nbsp;&nbsp;&nbsp;_Subpopulations defined in this resource_


|element |mapping |description |
|--------|--------|------------|
| resource | Maelstrom: Study<br/>Molgenis: resource<br/> | Maelstrom: <br/>Molgenis: E.g. 'Mothers in first trimester','newborns'<br/>  |
| name | Maelstrom: Name<br/>Molgenis: name<br/> | Maelstrom: <br/>Molgenis: E.g. 'Mothers in first trimester','newborns'<br/>  |
| noParticipants | Maelstrom: Number of Participants<br/>Molgenis: noParticipants<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| noParticipantsWithSamples | Maelstrom: Number of Participants with Biological Samples<br/>Molgenis: n/a<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| sourcesOfRecruitment | Maelstrom: Sources of Recruitment<br/> | Maelstrom: <br/>  |
| description |  |   |
| InclusionCriteria | Maelstrom: Selection Criteria<br/>Molgenis: InclusionCriteria<br/> | Maelstrom: <br/>Molgenis: <br/>  |
| geographicRegion | Maelstrom: Territories (part of Selection criteria?)<br/> | Maelstrom: <br/>  |
| supplementaryInformation | Maelstrom: Supplementary Information<br/> | Maelstrom: <br/>  |
### Table: Releases

Synonyms:

* in molgenis: Releases<br/>&nbsp;&nbsp;&nbsp;&nbsp;_Definition of a data relase, in case of Model this will not include data_


|element |mapping |description |
|--------|--------|------------|
| resource | Molgenis: resource<br/> | Molgenis: Link to the resource of which contents has been released<br/>  |
| version | Molgenis: version<br/> | Molgenis: version of the release<br/>  |
| includesModels | Molgenis: includesModels<br/> | Molgenis: in case multiple existing data models  are used to produce this release<br/>  |
| includesDatabanks | Molgenis: includesResources<br/> | Molgenis: in case of a network/study, it will  contain data of particular cohorts/databanks involved<br/>  |
| date | Molgenis: date<br/> | Molgenis: date of the release<br/>  |
| description | Molgenis: description<br/> | Molgenis: notes specific to this release<br/>  |


