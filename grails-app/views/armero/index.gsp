
<%@ page import="personal.Armero" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'armero.label', default: 'Armero')}" />
		<title><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.armeros"/></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.armero"/>
				</g:link>
			</ul>
		</div>
		<div id="list-armero" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="panel">
				<div class="panel-heading">
					<span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.armeros"/></span>
				</div>
				<div class="panel-body">
					<table class="table table-hover">
						<thead>
						<tr>
							<g:sortableColumn property="nombre" title="${message(code: 'armero.nombre.label', default: 'Nombre')}" />

							<g:sortableColumn property="primerApellido" title="${message(code: 'armero.primerApellido.label', default: 'Primer Apellido')}" />

							<g:sortableColumn property="segundoApellido" title="${message(code: 'armero.segundoApellido.label', default: 'Segundo Apellido')}" />

							<g:sortableColumn property="turno" title="${message(code: 'armero.turno.label', default: 'Turno')}" />

						</tr>
						</thead>
						<tbody>
							<g:each in="${armeroInstanceList}" status="i" var="armeroInstance">

								<tr class="${(i % 2) == 0 ? 'even' : 'odd'} mouse-over" onclick='document.location = "<g:createLink action='show' id='${armeroInstance.id}'/>"'>

									<td>${fieldValue(bean: armeroInstance, field: "nombre")}</td>

									<td>${fieldValue(bean: armeroInstance, field: "primerApellido")}</td>

									<td>${fieldValue(bean: armeroInstance, field: "segundoApellido")}</td>

									<td>${fieldValue(bean: armeroInstance?.turno, field: "descripcion")}</td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
			</div>
			<div class="pagination">
				<g:paginate total="${armeroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
