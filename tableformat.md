# FAIR catalogue - minimum inforation model

# Module Variables
* [Variables](#variables)
* [RepeatedVariables](#repeatedvariables)
* [VariableValues](#variablevalues)
* [Tables](#tables)
* [Vocabularies](#vocabularies)
# Module Mappings
* [VariableMappings](#variablemappings)
* [TableMappings](#tablemappings)
# Module Design
* [CollectionEvents](#collectionevents)
* [Subpopulations](#subpopulations)
* [Releases](#releases)

## Variables

### Variables
|element |mapping |description |
|--------|--------|------------|
| version | Molgenis: release.version<br/> |  |
| schema | Maelstrom: dataschema / study_dataset<br/>Molgenis: release.resource<br/> |  |
| table | Maelstrom: dataset (?)<br/>Molgenis: table<br/> |  |
| name | Maelstrom: dsch_var_name / study_specific_var_name<br/>Molgenis: name<br/> |  |
| label | Maelstrom: dsch_var_label<br/> |  |
| topics | Maelstrom: study_specific_var_keywords<br/>Molgenis: topics<br/> |  |
| format | Maelstrom: dsch_var_type / study_specific_var_type<br/>Molgenis: format<br/> |  |
| unit | Maelstrom: dsch_var_unit<br/>Molgenis: unit<br/> |  |
| collectionEvent | Molgenis: collectionEvent<br/> |  |
| references | Molgenis: references<br/> |  |
| mandatory | Molgenis: mandatory<br/> |  |
| description | Maelstrom: dsch_var_description<br/> |  |
| order | Maelstrom: dsch_index<br/>Molgenis: order<br/> |  |
| exampleValues | Molgenis: exampleValues<br/> |  |
| vocabularies | Molgenis: vocabularies<br/> |  |
### RepeatedVariables
|element |mapping |description |
|--------|--------|------------|
| release (see variable) |  |  |
| table (see variable) |  |  |
| name (see variable) |  |  |
| isRepeatOf | Molgenis: isRepeatOf<br/> |  |
### VariableValues
|element |mapping |description |
|--------|--------|------------|
| release | Maelstrom: dataschema<br/>Molgenis: release<br/> |  |
| variable | Maelstrom: dsch_var_name<br/>Molgenis: variable<br/> |  |
| value | Maelstrom: dsch_var_cat_code / study_specific_var_cat<br/>Molgenis: value<br/> |  |
| label | Maelstrom: dsch_var_cat_label<br/>Molgenis: label<br/> |  |
| order | Molgenis: order<br/> |  |
| isMissing | Maelstrom: missing<br/>Molgenis: isMissing<br/> |  |
| ontologyTermIRI | Molgenis: ontologyTermIRI<br/> |  |
### Tables
|element |mapping |description |
|--------|--------|------------|
| schema | Maelstrom: dataschema<br/>Molgenis: release<br/> |  |
| name | Maelstrom: dsch name<br/>Molgenis: name<br/> |  |
| label | Molgenis: label<br/> |  |
| unitOfObservation | Molgenis: unitOfObservation<br/> |  |
| topics | Molgenis: topics<br/> |  |
| description | Molgenis: description<br/> |  |
| numberOfRows | Molgenis: numberOfRows<br/> |  |
### Vocabularies
|element |mapping |description |
|--------|--------|------------|
| name |  |  |
| code | Molgenis: name<br/> |  |
| order | Molgenis: order<br/> |  |
| definition | Molgenis: order<br/> |  |
| comments | Molgenis: comments<br/> |  |
| parent | Molgenis: parent<br/> |  |
| ontologyTermURI | Molgenis: ontologyTermURI<br/> |  |

## Mappings

### VariableMappings
|element |mapping |description |
|--------|--------|------------|
| fromRelease | Maelstrom: study_name<br/> |  |
| fromResource | Maelstrom: study_dataset<br/> |  |
| fromTable |  |  |
| fromVariable | Maelstrom: study_specific_var_name<br/> | optional, variable. Initially one may only define mapping between releases |
| toRelease |  |  |
| toTable | Maelstrom: harmonized_dataset_name<br/> |  |
| toVariable | Maelstrom: dsch_var_name<br/> | in UI this is then one lookup field. In Excel it will be two columns. Value of 'targetVariable' is filtered based on selected 'targetCollection' and together be used for fkey(collection,dataset,name) in Variable. |
| match | Maelstrom: potential_harmo_status<br/> | e.g. 'complete, partial, planned, no-match' |
| potential_harmo_status_detail | Maelstrom: potential_harmo_status_detail<br/> |  |
| status |  | whether harmonisation is still draft or final |
| harmo_rule_category | Maelstrom: <br/> |  |
| description | Molgenis: description<br/> |  |
| comments | Maelstrom: comment / harmo_comments<br/> | additional notes and comments |
| study_specific_var_info | Maelstrom: study_specific_var_info<br/> |  |
| syntax | Maelstrom: harmo_rule<br/> | formal definition of the mapping, ideally executable code |
| comments_internal_use | Maelstrom: comments_internal_use<br/> |  |
### TableMappings
|element |mapping |description |
|--------|--------|------------|
| fromRelease |  | release being mapped from, i.e. fromRelease.resource + fromRelease.version |
| fromTable |  | name of the table being mapped from |
| toRelease |  | release being mapped to, i.e. toRelease.resource + toRelease.version |
| toTable |  | name of the table being mapped to |
| order |  | Order in which table ETLs should be executed for this source-target combination |
| description |  | human readible description of the mapping |
| syntax |  | formal definition of the mapping, ideally executable code |

## Design

### CollectionEvents
|element |mapping |description |
|--------|--------|------------|
| resource | Maelstrom: Study<br/>Molgenis: resource<br/> |  |
| name | Maelstrom: Name<br/>Molgenis: name<br/> |  |
| description | Maelstrom: Description<br/>Molgenis: description<br/> |  |
| startYear | Maelstrom: Start<br/>Molgenis: startYear<br/> |  |
| endYear | Maelstrom: End<br/>Molgenis: endYear<br/> |  |
| ageMin | Molgenis: ageMin<br/> |  |
| ageMax | Molgenis: ageMax<br/> |  |
| noParticipants | Molgenis: noParticipants<br/> |  |
| subpopulations | Molgenis: populations<br/> |  |
| supplementaryInformation | Maelstrom: Supplementary information<br/>Molgenis: supplementaryInformation<br/> |  |
### Subpopulations
|element |mapping |description |
|--------|--------|------------|
| resource | Maelstrom: Study<br/>Molgenis: resource<br/> |  |
| name | Maelstrom: Name<br/>Molgenis: name<br/> |  |
| noParticipants | Maelstrom: Number of Participants<br/>Molgenis: noParticipants<br/> |  |
| noParticipantsWithSamples | Maelstrom: Number of Participants with Biological Samples<br/>Molgenis: n/a<br/> |  |
| sourcesOfRecruitment | Maelstrom: Sources of Recruitment<br/> |  |
| description |  |  |
| InclusionCriteria | Maelstrom: Selection Criteria<br/>Molgenis: InclusionCriteria<br/> |  |
| geographicRegion | Maelstrom: Territories (part of Selection criteria?)<br/> | e.g. province |
| supplementaryInformation | Maelstrom: Supplementary Information<br/> |  |
### Releases
|element |mapping |description |
|--------|--------|------------|
| resource | Molgenis: resource<br/> |  |
| version | Molgenis: version<br/> |  |
| includesModels | Molgenis: includesModels<br/> |  |
| includesDatabanks | Molgenis: includesResources<br/> |  |
| date | Molgenis: date<br/> |  |
| description | Molgenis: description<br/> |  |


