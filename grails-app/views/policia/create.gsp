<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policia.label', default: 'Policia')}" />
		<title><g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.policia"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.policias"/>
                </g:link>
            </ul>
        </div>
		<div id="create-policia" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
		        <div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${policiaInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${policiaInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
			</g:hasErrors>
			<g:form url="[resource:policiaInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
                    <g:submitButton name="create" class="save btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
