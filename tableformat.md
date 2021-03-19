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
|element |mapping |description |
|--------|--------|------------|
| Entity: Variables |
|element |mapping |description |
| release | Maelstrom: dataschema<br/>Molgenis: release<br/> | release this table definition is part of |
| table | Maelstrom: dataset<br/> | table this variable is part of |
| name | Maelstrom: dsch_var_name<br/> | name of the variable, unique within a table |
| collectionEvent |  | in case of protocolised data collection this defines the moment in time this variable is collected on |
| label | Maelstrom: dsch_var_label<br/> |  |
| format | Maelstrom: dsch_var_type<br/> | string,int,decimal,date,datetime etc |
| unit | Maelstrom: dsch_var_unit<br/> | unit ontology |
| references |  | to define foreigh key relationships between variables within or across tables |
| mandatory |  | whether this variable is required within this collection |
| description | Maelstrom: dsch_var_description<br/> |  |
| order | Maelstrom: dsch_index<br/> | to sort variables you can optionally add an order value |
| exampleValues |  |  |
| permittedValues |  |  |
| contents |  |  |
| repeats |  | listing of all repeated variables defined for this variable |
| vocabularies |  |  |
| Entity: RepeatedVariables |
|element |mapping |description |
| release |  | release this table definition is part of |
| table |  | table this variable is part of |
| name |  | name of the variable, unique within a table |
| collectionEvent |  | in case of protocolised data collection this defines the moment in time this variable is collected on |
| mg_tableclass |  |  |
| mappings |  | listing of the VariableMappings defined between this variable and standard/harmonized variables |
| isRepeatOf |  | reference to the definition of the variable that is being repeated |
| Entity: VariableValues |
|element |mapping |description |
| release |  |  |
| variable |  | e.g. PATO |
| value |  | e.g. '1' |
| label |  |  |
| order |  |  |
| isMissing |  |  |
| ontologyTermIRI |  | reference to ontology term that defines this categorical value |
| Entity: Tables |
|element |mapping |description |
| release |  | resource + version this table is defined for |
| name |  | unique name in the release |
| label |  | short human readible description |
| unitOfObservation |  | defines what each record in this table describes |
| contents |  | enables grouping of table list into topic and to display tables in a tree |
| description |  | description of the role/function of this table |
| numberOfRows |  | count of the numbe of records in this table |
| mappings |  | list of mappings between this table and standard/harmonized tables |
| mappingsTo |  |  |
| Entity: Vocabularies |
|element |mapping |description |
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
|element |mapping |description |
|--------|--------|------------|
| Entity: VariableMappings |
|element |mapping |description |
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
| Entity: TableMappings |
|element |mapping |description |
| fromRelease |  | release being mapped from, i.e. fromRelease.resource + fromRelease.version |
| fromTable |  | name of the table being mapped from |
| toRelease |  | release being mapped to, i.e. toRelease.resource + toRelease.version |
| toTable |  | name of the table being mapped to |
| order |  | Order in which table ETLs should be executed for this source-target combination |
| description |  | human readible description of the mapping |
| syntax |  | formal definition of the mapping, ideally executable code |


