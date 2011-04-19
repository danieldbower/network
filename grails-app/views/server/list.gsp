
<%@ page import="info.network.Server" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'server.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="host" title="${message(code: 'server.host.label', default: 'Host')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'server.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="assetTag" title="${message(code: 'server.assetTag.label', default: 'Asset Tag')}" />
                        
                            <g:sortableColumn property="physicalOrVirtual" title="${message(code: 'server.physicalOrVirtual.label', default: 'Physical Or Virtual')}" />
                        
                            <th><g:message code="server.platform.label" default="Platform" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${serverInstanceList}" status="i" var="serverInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${serverInstance.id}">${fieldValue(bean: serverInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: serverInstance, field: "host")}</td>
                        
                            <td>${fieldValue(bean: serverInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: serverInstance, field: "assetTag")}</td>
                        
                            <td><g:formatBoolean boolean="${serverInstance?.physicalOrVirtual}"  true="Physical" false="Virtual" /></td>
                        
                            <td>${fieldValue(bean: serverInstance, field: "platform")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${serverInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
