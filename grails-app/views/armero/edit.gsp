<%@ page import="personal.Armero" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'armero.label', default: 'Armero')}" />
		<title><g:message code="default.button.editar.label"/> <g:message code="default.palabra.minus.armero"/></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.armeros"/>
				</g:link>
				<g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.armero"/>
				</g:link>
			</ul>
		</div>
		<div id="edit-armero" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${armeroInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${armeroInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
			</g:hasErrors>
			<g:form url="[resource:armeroInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${armeroInstance?.version}" />
				<fieldset class="form">
					<g:render template="form" model="[edit=true]"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
