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

## Variables

### Variables
|element |mapping |description |
|--------|--------|------------|
| schema | Maelstrom: dataschema / study_dataset<br/>Molgenis: release<br/> | name and version of a data schema (can be collected, or harmonized) |
| table | Maelstrom: dataset (?)<br/>Molgenis: table<br/> | name of the table this variable is part of |
| name | Maelstrom: dsch_var_name / study_specific_var_name<br/>Molgenis: name<br/> | name of the variable. Consider to use meaningfull naming scheme. |
| label | Maelstrom: dsch_var_label<br/> |  |
| topics | Molgenis: topics<br/> |  |
| format | Maelstrom: dsch_var_type<br/>Molgenis: format<br/> | type or format of the variable |
| unit | Maelstrom: dsch_var_unit<br/>Molgenis: unit<br/> | unit ontology |
| collectionEvent |  | in case of protocolised data collection this defines the moment in time this variable is collected on |
| references | Molgenis: references<br/> |  |
| mandatory | Molgenis: mandatory<br/> |  |
| description | Maelstrom: dsch_var_description<br/> |  |
| order | Maelstrom: dsch_index<br/> | to sort variables you can optionally add an order value |
| exampleValues | Molgenis: exampleValues<br/> |  |
| vocabularies | Molgenis: vocabularies<br/> |  |
### RepeatedVariables
|element |mapping |description |
|--------|--------|------------|
| release (see variable) |  |  |
| table (see variable) |  |  |
| name (see variable) |  |  |
| isRepeatOf | Molgenis: isRepeatOf<br/> | reference to the definition of the variable that is being repeated |
### VariableValues
|element |mapping |description |
|--------|--------|------------|
| release | Maelstrom: dataschema<br/>Molgenis: release<br/> |  |
| variable | Maelstrom: dsch_var_name<br/>Molgenis: variable<br/> |  |
| value | Maelstrom: dsch_var_cat_code<br/>Molgenis: value<br/> |  |
| label | Maelstrom: dsch_var_cat_label<br/>Molgenis: label<br/> |  |
| order | Molgenis: order<br/> |  |
| isMissing | Maelstrom: missing<br/>Molgenis: isMissing<br/> |  |
| ontologyTermIRI | Molgenis: ontologyTermIRI<br/> | reference to ontology term that defines this categorical value |
### Tables
|element |mapping |description |
|--------|--------|------------|
| schema | Maelstrom: dataschema<br/>Molgenis: release<br/> |  |
| name | Maelstrom: dsch name<br/> | unique name in the release |
| label |  | short human readible description |
| unitOfObservation |  | defines what each record in this table describes |
| contents |  | enables grouping of table list into topic and to display tables in a tree |
| description |  | description of the role/function of this table |
| numberOfRows |  | count of the numbe of records in this table |
| mappings |  | list of mappings between this table and standard/harmonized tables |
| mappingsTo |  |  |
### Vocabularies
|element |mapping |description |
|--------|--------|------------|
| name |  |  |
| code |  | identifier used for this code with the ontology |
| order |  |  |
| definition |  |  |
| comments |  |  |
| parent |  | link to a more broad term |
| ontologyTermURI |  |  |
| children |  | link to more specific terms |
| mg_tableclass |  |  |

## Mappings

### VariableMappings
|element |mapping |description |
|--------|--------|------------|
| fromRelease |  |  |
| fromTable |  |  |
| fromVariable |  | optional, variable. Initially one may only define mapping between releases |
| toRelease |  |  |
| toTable |  |  |
| toVariable |  | in UI this is then one lookup field. In Excel it will be two columns. Value of 'targetVariable' is filtered based on selected 'targetCollection' and together be used for fkey(collection,dataset,name) in Variable. |
| match |  | e.g. 'complete, partial, planned, no-match' |
| status |  | whether harmonisation is still draft or final |
| description |  | human readible description of the mapping |
| comments |  | additional notes and comments |
| syntax |  | formal definition of the mapping, ideally executable code |
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


