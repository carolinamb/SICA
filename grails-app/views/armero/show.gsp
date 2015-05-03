
<%@ page import="personal.Armero" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'armero.label', default: 'Armero')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link>
				<g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
					<g:message code="default.create.label" args="[entityName]" />
				</g:link>
			</ul>
		</div>
		<div id="show-armero" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="panel colourable">
				<div class="panel-heading">
					<span class="panel-title">Detalles del armero</span>
				</div>
				<div class="panel-body">
					<g:if test="${armeroInstance?.nombre}">
						<div class="fieldcontain col-sm-6">
							<span id="nombre-label" class="property-label col-sm-4 text-bold"><g:message code="armero.nombre.label" default="Nombre:" /></span>

							<span class="property-value col-sm-8" aria-labelledby="nombre-label"><g:fieldValue bean="${armeroInstance}" field="nombre"/></span>

						</div>
					</g:if>

					<g:if test="${armeroInstance?.primerApellido}">
						<div class="fieldcontain col-sm-6">
							<span id="primerApellido-label" class="property-label col-sm-4 text-bold"><g:message code="armero.primerApellido.label" default="Primer Apellido:" /></span>

							<span class="property-value col-sm-8" aria-labelledby="primerApellido-label"><g:fieldValue bean="${armeroInstance}" field="primerApellido"/></span>

						</div>
					</g:if>

					<g:if test="${armeroInstance?.segundoApellido}">
						<div class="fieldcontain col-sm-6">
							<span id="segundoApellido-label" class="property-label col-sm-4 text-bold"><g:message code="armero.segundoApellido.label" default="Segundo Apellido:" /></span>

							<span class="property-value col-sm-8" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${armeroInstance}" field="segundoApellido"/></span>

						</div>
					</g:if>

					<g:if test="${armeroInstance?.turno}">
						<div class="fieldcontain col-sm-6">
							<span id="turno-label" class="property-label col-sm-4 text-bold"><g:message code="armero.turno.label" default="Turno:" /></span>

							<span class="property-value col-sm-8" aria-labelledby="turno-label">${armeroInstance?.turno?.descripcion?.encodeAsHTML()}</span>

						</div>
					</g:if>
				</div>
			</div>
			<g:form url="[resource:armeroInstance, action:'delete']" method="DELETE">
				<div class="btn-group btn-group-xs">
					<g:link class="btn btn-warning" action="edit" resource="${armeroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
			</g:form>
		</div>
	</body>
</html>
