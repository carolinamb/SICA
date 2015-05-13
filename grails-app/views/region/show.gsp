
<%@ page import="personal.Region" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'region.label', default: 'Region')}" />
		<title><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.region"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.regiones"/>
                </g:link>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNueva.label"/> <g:message code="default.palabra.minus.region"/>
                </g:link>
            </ul>
        </div>
		<div id="show-region" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel colourable">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.region"/></span>
                </div>
                <div class="panel-body">

                    <g:if test="${regionInstance?.descripcion}">
                        <div class="fieldcontain col-sm-6">
                           <span id="descripcion-label" class="property-label col-sm-4 text-bold"><g:message code="region.descripcion.label" default="Descripcion" /></span>
					
						    <span class="property-value col-sm-8" aria-labelledby="descripcion-label"><g:fieldValue bean="${regionInstance}" field="descripcion"/></span>
					
				        </div>
				    </g:if>
			    </div>
			</div>
			<g:form url="[resource:regionInstance, action:'delete']" method="DELETE">
                <div class="btn-group btn-group-xs">
                    <g:link class="btn btn-warning" action="edit" resource="${regionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
			</g:form>
		</div>
	</body>
</html>
