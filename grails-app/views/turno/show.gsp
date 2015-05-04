
<%@ page import="catalogo.Turno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'turno.label', default: 'Turno')}" />
		<title><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.turno"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.turnos"/>
                </g:link>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.turno"/>
                </g:link>
            </ul>
        </div>
		<div id="show-turno" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel colourable">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.turno"/></span>
                </div>
                <div class="panel-body">

				    <g:if test="${turnoInstance?.descripcion}">

                        <div class="fieldcontain col-sm-6">
                             <span id="descripcion-label" class="property-label"><g:message code="turno.descripcion.label" default="Descripcion" /></span>
					
						    <span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${turnoInstance}" field="descripcion"/></span>
					
				        </div>
				    </g:if>
			    </div>
			</div>
			<g:form url="[resource:turnoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
                    <g:link class="btn btn-warning" action="edit" resource="${armeroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
