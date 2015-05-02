
<%@ page import="personal.Armero" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'armero.label', default: 'Armero')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-armero" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-armero" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'armero.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="primerApellido" title="${message(code: 'armero.primerApellido.label', default: 'Primer Apellido')}" />
					
						<g:sortableColumn property="segundoApellido" title="${message(code: 'armero.segundoApellido.label', default: 'Segundo Apellido')}" />
					
						<th><g:message code="armero.turno.label" default="Turno" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${armeroInstanceList}" status="i" var="armeroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${armeroInstance.id}">${fieldValue(bean: armeroInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: armeroInstance, field: "primerApellido")}</td>
					
						<td>${fieldValue(bean: armeroInstance, field: "segundoApellido")}</td>
					
						<td>${fieldValue(bean: armeroInstance?.turno, field: "descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${armeroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
