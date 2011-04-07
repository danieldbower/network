

<%@ page import="info.network.Server" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${serverInstance}">
            <div class="errors">
                <g:renderErrors bean="${serverInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
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
                                    <label for="connections[0].address"><g:message code="server.connections.primaryaddress.label" default="Administrative Ip Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'connections.address', 'errors')}">
                                    <g:textField name="connections[0].address" size="40" value="${serverInstance?.connections?.get(0)?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="serverTypes"><g:message code="server.serverTypes.label" default="Server Types" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'platform', 'errors')}">
                                    <g:select name="serverTypes"
								          from="${info.network.ServerType.list()}"
								          value="${serverInstance?.serverTypes*.id}"
								          optionKey="id" 
								          multiple="true" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="server.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="80" rows="5" value="${serverInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buildScripts[0].text"><g:message code="server.buildScripts.text.label" default="Build Script" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'buildScripts.text', 'errors')}">
                                    <g:textArea name="buildScripts[0].text" cols="80" rows="5" value="${serverInstance?.buildScripts?.get(0)?.text}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
