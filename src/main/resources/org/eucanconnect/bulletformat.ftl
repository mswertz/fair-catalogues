# FAIR catalogue

## Modules
<#list modules as module>
* ${module.name}
    <#list module.tables as table>
  * [${table.name}](#${table.name})
    </#list>
</#list>

<#list modules as module>
## Module: ${module.name}
    <#list module.tables as table>
### Table: ${table.name}
<#if table.description??>
_${table.description}_
</#if><#if table.info??>
> ${table.info}
</#if>
<#list table.columns as column>
* ${column.name}<#if column.description??><br/>&nbsp;&nbsp;&nbsp;&nbsp;_${column.description}_</#if><#if column.maelstrom??>
    * maelstrom: ${column.maelstrom.name?if_exists}<#if column.maelstrom.description??><br/>&nbsp;&nbsp;&nbsp;&nbsp;_${column.maelstrom.description}_</#if><#if column.maelstrom.info??>
> ${column.maelstrom.info}
</#if></#if><#if column.molgenis??>
    * molgenis: ${column.molgenis.name?if_exists}<#if column.molgenis.description??><br/>&nbsp;&nbsp;&nbsp;&nbsp;_${column.molgenis.description}_</#if>
</#if>

        </#list>
    </#list>
</#list>
