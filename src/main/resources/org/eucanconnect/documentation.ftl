<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body style="font-family: Verdana, sans-serif;">
<h1>FAIR catalogue - minimum inforation model</h1>
<p>TODO description</p>
<label><a name="__top" id="__top">Table of contents:</a></label>
<ul>
    <#list modules as module>
    <li>Module <a href="#${module.name}">${module.name}
            <ul><#list module.tables as table>
                    <li><a href="#${table.name}">${table.name}</a></li></#list></ul>
            </#list>
</ul>
<table class="table">
    <#list modules as module>
        <tr>
        <td colspan="2"><h1><a name="${module.name}" id="${module.name}">module ${module.name}</a></h1></td></tr>
        <#list module.tables as table>
            <tr>
                <td colspan="2"><h2><a name="${table.name}" id="${table.name}">Table ${table.name} </a></h2>(<a
                            href="#__top">back to top</a>)
                </td>
            </tr>
            <tr>
                <th>element</th>
                <th>mapping</th>
                <th>description</th>
            </tr>
            <#list table.columns as column>
                <tr>
                    <td>${column.name}</td>
                    <td style="white-space: nowrap;">
                        <#if column.maelstrom??>
                            Maelstrom: ${column.maelstrom.name?if_exists}<br/>
                        </#if>
                        <#if column.molgenis??>
                            Molgenis: ${column.molgenis.name?if_exists}<br/>
                        </#if>
                    </td>
                    <td>${column.description?if_exists}</td>
                </tr>
            </#list>
        </#list>
    </#list>
</table>
</body>
</html>
