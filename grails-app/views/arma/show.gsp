
<%@ page import="armamento.Arma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'arma.label', default: 'Arma')}" />
		<title><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.arma"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.armas"/>
                </g:link>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.arma"/>
                </g:link>
            </ul>
        </div>
		<div id="show-arma" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel colourable">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.arma"/></span>
                </div>
                <div class="panel-body">

                    <g:if test="${armaInstance?.marca}">
                        <div class="fieldcontain col-sm-6">
                           <span id="marca-label" class="property-label col-sm-4 text-bold"><g:message code="arma.marca.label" default="Marca" /></span>

                           <span class="property-value col-sm-8" aria-labelledby="marca-label"><g:fieldValue bean="${armaInstance}" field="marca"/></span>
					
				        </div>
				    </g:if>
			
                    <g:if test="${armaInstance?.tipo}">
                        <div class="fieldcontain col-sm-6">
                            <span id="tipo-label" class="property-label col-sm-4 text-bold"><g:message code="arma.tipo.label" default="Tipo" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="tipo-label"><g:fieldValue bean="${armaInstance}" field="tipo"/></span>

                        </div>
                    </g:if>
			
                    <g:if test="${armaInstance?.modelo}">
                        <div class="fieldcontain col-sm-6">
                            <span id="modelo-label" class="property-label col-sm-4 text-bold"><g:message code="arma.modelo.label" default="Modelo" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="modelo-label"><g:fieldValue bean="${armaInstance}" field="modelo"/></span>

                        </div>
                    </g:if>

                    <g:if test="${armaInstance?.calibre}">
                        <div class="fieldcontain col-sm-6">
                            <span id="calibre-label" class="property-label col-sm-4 text-bold"><g:message code="arma.calibre.label" default="Calibre" /></span>

                            <span class="property-value col-sm-8e" aria-labelledby="calibre-label"><g:fieldValue bean="${armaInstance}" field="calibre"/></span>

                        </div>
                    </g:if>

                    <g:if test="${armaInstance?.matricula}">
                        <div class="fieldcontain col-sm-6">
                            <span id="matricula-label" class="property-label col-sm-4 text-bold"><g:message code="arma.matricula.label" default="Matricula" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="matricula-label"><g:fieldValue bean="${armaInstance}" field="matricula"/></span>
                        </div>
                    </g:if>
                </div>
            </div>
			<g:form url="[resource:armaInstance, action:'delete']" method="DELETE">
                <div class="btn-group btn-group-xs">
                    <g:link class="btn btn-warning" action="edit" resource="${armaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </div>
			</g:form>
        </div>
	</body>
</html>
