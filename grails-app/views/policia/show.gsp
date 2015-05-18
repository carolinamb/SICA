
<%@ page import="personal.Policia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policia.label', default: 'Policia')}" />
		<title><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.policia"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.policias"/>
                </g:link>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.policia"/>
                </g:link>
            </ul>
        </div>
		<div id="show-policia" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel colourable">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.movimiento"/></span>
                </div>
                <g:render template="datosPolicia"/>
                <g:form url="[resource:policiaInstance, action:'delete']" method="DELETE">
                    <div class="btn-group btn-group-xs">
                        <g:link class="btn btn-primary" controller="policia" action="generarCredencial" format="PDF"
                                id="${policiaInstance.id}"><span
                                class="btn-label icon fa fa-file-text-o"></span>Generar Credencial</g:link>
                        <g:link class="btn btn-warning" action="edit" resource="${policiaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </div>
                </g:form>
            </div>
		</div>
    </body>
</html>
