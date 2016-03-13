
<%@ page import="armamento.Cargadores" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cargadores.label', default: 'Cargadores')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cargadores" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cargadores" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cantidad" title="${message(code: 'cargadores.cantidad.label', default: 'Cantidad')}" />
					
						<g:sortableColumn property="estatus" title="${message(code: 'cargadores.estatus.label', default: 'Estatus')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cargadoresInstanceList}" status="i" var="cargadoresInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cargadoresInstance.id}">${fieldValue(bean: cargadoresInstance, field: "cantidad")}</g:link></td>
					
						<td><g:formatBoolean boolean="${cargadoresInstance.estatus}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cargadoresInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
