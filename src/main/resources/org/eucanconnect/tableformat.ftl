# FAIR catalogue - minimum inforation model

## Modules
<#list modules as module>
* ${module.name}
<#list module.tables as table>
    * [${table.name}](#${table.name?lower_case})
</#list></#list>

<#list modules as module>
## Module: ${module.name}

<#list module.tables as table>
### Table: ${table.name}

Synonyms:

<#if table.maelstrom??>
* in maelstrom: ${table.maelstrom.name?if_exists}<#if table.maelstrom.description??><br/>&nbsp;&nbsp;&nbsp;&nbsp;_${table.maelstrom.description}_</#if>
<#if table.maelstrom.info??>
> ${table.maelstrom.info}
</#if></#if>
<#if table.molgenis??>
* in molgenis: ${table.molgenis.name?if_exists}<#if table.molgenis.description??><br/>&nbsp;&nbsp;&nbsp;&nbsp;_${table.molgenis.description}_</#if>
</#if>


|element |mapping |description |
|--------|--------|------------|
<#list table.columns as column>
| ${column.name} | <#if column.maelstrom?? && column.maelstrom.name??>Maelstrom: ${column.maelstrom.name?if_exists}<br/></#if><#if column.molgenis?? && column.molgenis.name??>Molgenis: ${column.molgenis.name?if_exists}<br/></#if> | <#if column.maelstrom?? && column.maelstrom.description??>Maelstrom: ${column.maelstrom.description?if_exists}<br/></#if><#if column.molgenis?? && column.molgenis.description??>Molgenis: ${column.molgenis.description?if_exists}<br/></#if>  |
</#list></#list>

</#list>

