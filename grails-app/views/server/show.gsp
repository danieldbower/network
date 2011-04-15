
<%@ page import="info.network.Server" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.host.label" default="Host" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "host")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.physicalOrVirtual.label" default="Physical Or Virtual" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${serverInstance?.physicalOrVirtual}"  true="Physical" false="Virtual" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.assetTag.label" default="Asset Tag" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "assetTag")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.platform.label" default="Platform" /></td>
                            
                            <td valign="top" class="value"><g:link controller="platform" action="show" id="${serverInstance?.platform?.id}">${serverInstance?.platform?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.priority.label" default="Priority" /></td>
                            
                            <td valign="top" class="value"><g:link controller="priority" action="show" id="${serverInstance?.priority?.id}">${serverInstance?.priority?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.connections.label" default="Connections" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${serverInstance.connections}" var="c">
                                    <li><g:link controller="connection" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link> - <g:if test="${c.administrativeConnection }">Administrative IP</g:if></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.serverTypes.label" default="Server Type" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${serverInstance.serverTypes}" var="s">
                                    <li><g:link controller="serverType" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.buildScripts.label" default="Build Scripts" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:if test="${0<serverInstance.buildScripts.size()}">
                                    <g:each in="${serverInstance.buildScripts}" var="b">
                                        <li><g:link controller="buildScript" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link> </li>
                                    </g:each>
                                </g:if>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="server.services.label" default="Services" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${serverInstance.services}" var="s">
                                    <li><g:link controller="service" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${serverInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
