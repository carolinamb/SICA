
<%@ page import="armamento.Cartucho" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cartucho.label', default: 'Cartucho')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cartucho" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="lista"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cartucho" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="marca" title="${message(code: 'cartucho.marca.label', default: 'Marca')}" />
					
						<g:sortableColumn property="calibre" title="${message(code: 'cartucho.calibre.label', default: 'Calibre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cartuchoInstanceList}" status="i" var="cartuchoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cartuchoInstance.id}">${fieldValue(bean: cartuchoInstance, field: "marca")}</g:link></td>
					
						<td>${fieldValue(bean: cartuchoInstance, field: "calibre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cartuchoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
