
<%@ page import="operacionDiaria.Movimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movimiento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movimiento">
			
				<g:if test="${movimientoInstance?.policia}">
				<li class="fieldcontain">
					<span id="policia-label" class="property-label"><g:message code="movimiento.policia.label" default="Policia" /></span>
					
						<span class="property-value" aria-labelledby="policia-label"><g:link controller="policia" action="show" id="${movimientoInstance?.policia?.id}">${movimientoInstance?.policia?.clave?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.armero}">
				<li class="fieldcontain">
					<span id="armero-label" class="property-label"><g:message code="movimiento.armero.label" default="Armero" /></span>
					
						<span class="property-value" aria-labelledby="armero-label"><g:link controller="armero" action="show" id="${movimientoInstance?.armero?.id}">${movimientoInstance?.armero?.id?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.turno}">
				<li class="fieldcontain">
					<span id="turno-label" class="property-label"><g:message code="movimiento.turno.label" default="Turno" /></span>
					
						<span class="property-value" aria-labelledby="turno-label"><g:link controller="turno" action="show" id="${movimientoInstance?.turno?.id}">${movimientoInstance?.turno?.descripcion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.cartuchosEntregados}">
				<li class="fieldcontain">
					<span id="cartuchosEntregados-label" class="property-label"><g:message code="movimiento.cartuchosEntregados.label" default="Cartuchos Entregados" /></span>
					
						<span class="property-value" aria-labelledby="cartuchosEntregados-label"><g:fieldValue bean="${movimientoInstance}" field="cartuchosEntregados"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.cartuchosRecibidos}">
				<li class="fieldcontain">
					<span id="cartuchosRecibidos-label" class="property-label"><g:message code="movimiento.cartuchosRecibidos.label" default="Cartuchos Recibidos" /></span>
					
						<span class="property-value" aria-labelledby="cartuchosRecibidos-label"><g:fieldValue bean="${movimientoInstance}" field="cartuchosRecibidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.cargadoresEntregados}">
				<li class="fieldcontain">
					<span id="cargadoresEntregados-label" class="property-label"><g:message code="movimiento.cargadoresEntregados.label" default="Cargadores Entregados" /></span>
					
						<span class="property-value" aria-labelledby="cargadoresEntregados-label"><g:fieldValue bean="${movimientoInstance}" field="cargadoresEntregados"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.cargadoresRecibidos}">
				<li class="fieldcontain">
					<span id="cargadoresRecibidos-label" class="property-label"><g:message code="movimiento.cargadoresRecibidos.label" default="Cargadores Recibidos" /></span>
					
						<span class="property-value" aria-labelledby="cargadoresRecibidos-label"><g:fieldValue bean="${movimientoInstance}" field="cargadoresRecibidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="movimiento.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${movimientoInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="movimiento.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${movimientoInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:movimientoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${movimientoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
