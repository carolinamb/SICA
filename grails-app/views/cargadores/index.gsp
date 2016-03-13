
<%@ page import="armamento.Cargadores" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cargadores.label', default: 'Cargadores')}" />
		<title><g:message code="default.button.lista.label"/><g:message code="default.palabra.minus.cartuchos"/></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
					<g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.cargador"/>
				</g:link>
			</ul>
		</div>
		<div id="list-cargadores" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="panel">
				<div class="panel-heading">
					<span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.cargadores"/></span>
				</div>
				<div class="panel-body">
					<table class="table table-hover">
						<thead>
						<tr>
							<g:sortableColumn property="cantidad" title="${message(code: 'cargador.cantidad.label', default: 'Cantidad')}" />

						</tr>
						</thead>
						<tbody>
						<g:each in="${cargadoresInstanceList}" status="i" var="cargadorInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'} mouse-over" onclick='document.location = "<g:createLink action='show' id='${cartuchoInstance.id}'/>"'>
								<td>${fieldValue(bean: cargadorInstance, field: "cantidad")}</td>
							</tr>
						</g:each>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="pagination">
			<g:paginate total="${cargadoresInstanceCount ?: 0}" />
		</div>
	</body>
</html>
