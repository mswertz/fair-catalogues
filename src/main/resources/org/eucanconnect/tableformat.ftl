# FAIR catalogue - minimum inforation model

<#list modules as module>
# Module ${module.name}
<#list module.tables as table>
* [${table.name}](#${table.name})
</#list></#list>

<#list modules as module>
## ${module.name}
|element |mapping |description |
|--------|--------|------------|
<#list module.tables as table>
| Entity: ${table.name} |
|element |mapping |description |
<#list table.columns as column>
| ${column.name} | <#if column.maelstrom??>Maelstrom: ${column.maelstrom.name?if_exists}<br/></#if><#if column.molgenis??>Molgenis: ${column.molgenis.name?if_exists}<br/></#if> | ${column.description?if_exists} |
</#list></#list>

</#list>

