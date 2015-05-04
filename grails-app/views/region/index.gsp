
<%@ page import="personal.Region" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'region.label', default: 'Region')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.create.label" args="[entityName]" />
                </g:link>
            </ul>
        </div>
		<div id="list-region" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title">Lista de regiones</span>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
						    <g:sortableColumn property="descripcion" title="${message(code: 'region.descripcion.label', default: 'Descripcion')}" />
                        </tr>
                        </thead>
                        <tbody>
				            <g:each in="${regionInstanceList}" status="i" var="regionInstance">
				            	<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						            <td><g:link action="show" id="${regionInstance.id}">${fieldValue(bean: regionInstance, field: "descripcion")}</g:link></td>
					
					            </tr>
				            </g:each>
				        </tbody>
			        </table>
                </div>
            </div>
			<div class="pagination">
				<g:paginate total="${regionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
