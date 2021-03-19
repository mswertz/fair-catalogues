# FAIR catalogue - minimum inforation model

<#list modules as module>
# Module ${module.name}
<#list module.tables as table>
* [${table.name}](#${table.name?lower_case})
</#list></#list>

<#list modules as module>
## ${module.name}

<#list module.tables as table>
### ${table.name}
|element |mapping |description |
|--------|--------|------------|
|element |mapping |description |
<#list table.columns as column>
| ${column.name} | <#if column.maelstrom??>Maelstrom: ${column.maelstrom.name?if_exists}<br/></#if><#if column.molgenis??>Molgenis: ${column.molgenis.name?if_exists}<br/></#if> | ${column.description?if_exists} |
</#list></#list>

</#list>

