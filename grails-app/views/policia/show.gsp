
<%@ page import="personal.Policia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policia.label', default: 'Policia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-policia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-policia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list policia">
			
				<g:if test="${policiaInstance?.clave}">
				<li class="fieldcontain">
					<span id="clave-label" class="property-label"><g:message code="policia.clave.label" default="Clave" /></span>
					
						<span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${policiaInstance}" field="clave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="policia.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${policiaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.primerApellido}">
				<li class="fieldcontain">
					<span id="primerApellido-label" class="property-label"><g:message code="policia.primerApellido.label" default="Primer Apellido" /></span>
					
						<span class="property-value" aria-labelledby="primerApellido-label"><g:fieldValue bean="${policiaInstance}" field="primerApellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.segundoApellido}">
				<li class="fieldcontain">
					<span id="segundoApellido-label" class="property-label"><g:message code="policia.segundoApellido.label" default="Segundo Apellido" /></span>
					
						<span class="property-value" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${policiaInstance}" field="segundoApellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.region}">
				<li class="fieldcontain">
					<span id="region-label" class="property-label"><g:message code="policia.region.label" default="Region" /></span>
					
						<span class="property-value" aria-labelledby="region-label"><g:link controller="region" action="show" id="${policiaInstance?.region?.id}">${policiaInstance?.region?.descripcion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.puesto}">
				<li class="fieldcontain">
					<span id="puesto-label" class="property-label"><g:message code="policia.puesto.label" default="Puesto" /></span>
					
						<span class="property-value" aria-labelledby="puesto-label"><g:link controller="puesto" action="show" id="${policiaInstance?.puesto?.id}">${policiaInstance?.puesto?.descripcion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.grado}">
				<li class="fieldcontain">
					<span id="grado-label" class="property-label"><g:message code="policia.grado.label" default="Grado" /></span>
					
						<span class="property-value" aria-labelledby="grado-label"><g:link controller="grado" action="show" id="${policiaInstance?.grado?.id}">${policiaInstance?.grado?.descripcion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.adscripcion}">
				<li class="fieldcontain">
					<span id="adscripcion-label" class="property-label"><g:message code="policia.adscripcion.label" default="Adscripcion" /></span>
					
						<span class="property-value" aria-labelledby="adscripcion-label"><g:link controller="adscripcion" action="show" id="${policiaInstance?.adscripcion?.id}">${policiaInstance?.adscripcion?.descripcion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.cartuchosAbastecidos}">
				<li class="fieldcontain">
					<span id="cartuchosAbastecidos-label" class="property-label"><g:message code="policia.cartuchosAbastecidos.label" default="Cartuchos Abastecidos" /></span>
					
						<span class="property-value" aria-labelledby="cartuchosAbastecidos-label"><g:fieldValue bean="${policiaInstance}" field="cartuchosAbastecidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.cargadoresAbastecidos}">
				<li class="fieldcontain">
					<span id="cargadoresAbastecidos-label" class="property-label"><g:message code="policia.cargadoresAbastecidos.label" default="Cargadores Abastecidos" /></span>
					
						<span class="property-value" aria-labelledby="cargadoresAbastecidos-label"><g:fieldValue bean="${policiaInstance}" field="cargadoresAbastecidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.armas}">
				<li class="fieldcontain">
					<span id="armas-label" class="property-label"><g:message code="policia.armas.label" default="Armas" /></span>
					
						<g:each in="${policiaInstance.armas}" var="a">
						<span class="property-value" aria-labelledby="armas-label"><g:link controller="arma" action="show" id="${a.id}">${a?.marca?.encodeAsHTML()} ${a?.modelo?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${policiaInstance?.cartuchos}">
				<li class="fieldcontain">
					<span id="cartuchos-label" class="property-label"><g:message code="policia.cartuchos.label" default="Cartuchos" /></span>
					
						<g:each in="${policiaInstance.cartuchos}" var="c">
						<span class="property-value" aria-labelledby="cartuchos-label"><g:link controller="cartucho" action="show" id="${c.id}">${c?.marca?.encodeAsHTML()} ${c?.calibre?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:policiaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${policiaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
