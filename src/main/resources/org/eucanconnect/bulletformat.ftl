# FAIR catalogue

## Modules
<#list modules as module>
* Module ${module.name}
    <#list module.tables as table>
  * [${table.name}](#${table.name})
    </#list>
</#list>

<#list modules as module>
## module ${module.name}
    <#list module.tables as table>
### Table ${table.name}
        <#list table.columns as column>
* ${column.name}<#if column.description??> - ${column.description}</#if><#if column.maelstrom??>
    * Maelstrom: ${column.maelstrom.name?if_exists}<#if column.maelstrom.description??> - ${column.maelstrom.description}</#if><#if column.maelstrom.info??>
~~~~
${column.maelstrom.info}
~~~~</#if></#if><#if column.molgenis??>
    * Molgenis: ${column.molgenis.name?if_exists}<#if column.molgenis.description??> - ${column.molgenis.description}</#if>
</#if>

        </#list>
    </#list>
</#list>
