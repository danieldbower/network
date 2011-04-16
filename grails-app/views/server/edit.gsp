

<%@ page import="info.network.Server" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${serverInstance}">
            <div class="errors">
                <g:renderErrors bean="${serverInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${serverInstance?.id}" />
                <g:hiddenField name="version" value="${serverInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="host"><g:message code="server.host.label" default="Host" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'host', 'errors')}">
                                    <g:textField name="host" size="40" value="${serverInstance?.host}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="physicalOrVirtual"><g:message code="server.physicalOrVirtual.label" default="Physical Or Virtual" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'physicalOrVirtual', 'errors')}">
                                    <g:checkBox name="physicalOrVirtual" value="${serverInstance?.physicalOrVirtual}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="assetTag"><g:message code="server.assetTag.label" default="Asset Tag" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'assetTag', 'errors')}">
                                    <g:textField name="assetTag" size="40" value="${serverInstance?.assetTag}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="platform"><g:message code="server.platform.label" default="Platform" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'platform', 'errors')}">
                                    <g:select name="platform.id" from="${info.network.Platform.list()}" optionKey="id" value="${serverInstance?.platform?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="priority"><g:message code="server.priority.label" default="Priority" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'priority', 'errors')}">
                                    <g:select name="priority.id" from="${info.network.Priority.list()}" optionKey="id" value="${serverInstance?.priority?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="connections"><g:message code="server.connections.label" default="Connections" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'connections', 'errors')}">
                                    <g:select name="connections" from="${info.network.Connection.list()}" multiple="yes" optionKey="id" size="5" value="${serverInstance?.connections*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="serverType"><g:message code="server.serverType.label" default="Server Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'serverType', 'errors')}">
                                    <g:select name="serverTypes" from="${info.network.ServerType.list()}" multiple="yes" optionKey="id" size="5" value="${serverInstance?.serverTypes*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="server.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${serverInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="services"><g:message code="server.services.label" default="Services" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'services', 'errors')}">
                                    <g:select name="services" from="${info.network.Service.list()}" multiple="yes" optionKey="id" size="5" value="${serverInstance?.services*.id}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <g:each in="${serverInstance?.buildScripts}" var="buildScript"  status="i">
                    <g:hiddenField name="buildScripts[${i}].id" value="${buildScript?.id}" />
                </g:each>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
