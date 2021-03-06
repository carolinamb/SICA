
<%@ page import="armamento.Cartucho" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cartucho.label', default: 'Cartucho')}" />
		<title><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.cartucho"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.cartuchos"/>
                </g:link>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.cartucho"/>
                </g:link>
            </ul>
        </div>
		<div id="show-cartucho" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel colourable">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.cartucho"/></span>
                </div>
                <div class="panel-body">
                    <g:if test="${cartuchoInstance?.cantidad}">
                        <div class="fieldcontain col-sm-6">
                            <span id="cantidad-label" class="property-label col-sm-4 text-bold"><g:message code="cartucho.cantidad.label" default="Cantidad" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="cantidad-label"><g:fieldValue bean="${cartuchoInstance}" field="cantidad"/></span>

                        </div>
                    </g:if>
                    <g:if test="${cartuchoInstance?.calibre}">
                        <div class="fieldcontain col-sm-6">
                            <span id="calibre-label" class="property-label col-sm-4 text-bold"><g:message code="cartucho.calibre.label" default="Calibre" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="calibre-label"><g:fieldValue bean="${cartuchoInstance}" field="calibre"/></span>

                        </div>
                    </g:if>
                </div>
			</div>
			<g:form url="[resource:cartuchoInstance, action:'delete']" method="DELETE">
                <div class="btn-group btn-group-xs">
                    <g:link class="btn btn-warning" action="edit" resource="${cartuchoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
			</g:form>
		</div>
	</body>
</html>
