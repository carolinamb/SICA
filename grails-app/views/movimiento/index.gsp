
<%@ page import="operacionDiaria.Movimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-movimiento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="movimiento.policia.label" default="Policia" /></th>
					
						<th><g:message code="movimiento.armero.label" default="Armero" /></th>
					
						<th><g:message code="movimiento.turno.label" default="Turno" /></th>
					
						<g:sortableColumn property="cartuchosEntregados" title="${message(code: 'movimiento.cartuchosEntregados.label', default: 'Cartuchos Entregados')}" />
					
						<g:sortableColumn property="cartuchosRecibidos" title="${message(code: 'movimiento.cartuchosRecibidos.label', default: 'Cartuchos Recibidos')}" />
					
						<g:sortableColumn property="cargadoresEntregados" title="${message(code: 'movimiento.cargadoresEntregados.label', default: 'Cargadores Entregados')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${movimientoInstanceList}" status="i" var="movimientoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${movimientoInstance.id}">${fieldValue(bean: movimientoInstance?.policia, field: "clave")}</g:link></td>
					
						<td>${fieldValue(bean: movimientoInstance?.armero, field: "id")}</td>
					
						<td>${fieldValue(bean: movimientoInstance?.turno, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "cartuchosEntregados")}</td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "cartuchosRecibidos")}</td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "cargadoresEntregados")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${movimientoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
