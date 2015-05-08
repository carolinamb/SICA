
<%@ page import="operacionDiaria.Movimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
		<title><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.movimiento"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-list btn-dark-gray btn-rounded" action="index">
                    <g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.movimientos"/>
                </g:link>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.movimiento"/>
                </g:link>
            </ul>
        </div>
		<div id="show-movimiento" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel colourable">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.movimiento"/></span>
                </div>
                <div class="panel-body">

                    <g:if test="${movimientoInstance?.policia}">
                        <div class="fieldcontain col-sm-6">
                           <span id="policia-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.policia.label" default="Policia:" /></span>
					
						    <span class="property-value col-sm-8" aria-labelledby="policia-label">${movimientoInstance?.policia?.clave?.encodeAsHTML()}</span>
					
				        </div>
				    </g:if>
			
                    <g:if test="${movimientoInstance?.armero}">
                        <div class="fieldcontain col-sm-6">
                           <span id="armero-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.armero.label" default="Armero:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="armero-label">${movimientoInstance?.armero?.id?.encodeAsHTML()}</span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.turno}">
                        <div class="fieldcontain col-sm-6">
                           <span id="turno-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.turno.label" default="Turno:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="turno-label">${movimientoInstance?.turno?.descripcion?.encodeAsHTML()}</span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.cartuchosEntregados}">
                        <div class="fieldcontain col-sm-6">
                           <span id="cartuchosEntregados-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.cartuchosEntregados.label" default="Cartuchos Entregados:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="cartuchosEntregados-label"><g:fieldValue bean="${movimientoInstance}" field="cartuchosEntregados"/></span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.cartuchosRecibidos}">
                        <div class="fieldcontain col-sm-6">
                           <span id="cartuchosRecibidos-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.cartuchosRecibidos.label" default="Cartuchos Recibidos:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="cartuchosRecibidos-label"><g:fieldValue bean="${movimientoInstance}" field="cartuchosRecibidos"/></span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.cargadoresEntregados}">
                        <div class="fieldcontain col-sm-6">
                           <span id="cargadoresEntregados-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.cargadoresEntregados.label" default="Cargadores Entregados:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="cargadoresEntregados-label"><g:fieldValue bean="${movimientoInstance}" field="cargadoresEntregados"/></span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.cargadoresRecibidos}">
                        <div class="fieldcontain col-sm-6">
                           <span id="cargadoresRecibidos-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.cargadoresRecibidos.label" default="Cargadores Recibidos:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="cargadoresRecibidos-label"><g:fieldValue bean="${movimientoInstance}" field="cargadoresRecibidos"/></span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.fecha}">
                        <div class="fieldcontain col-sm-6">
                           <span id="fecha-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.fecha.label" default="Fecha:" /></span>

                            <span class="property-valu col-sm-8e" aria-labelledby="fecha-label"><g:formatDate date="${movimientoInstance?.fecha}" /></span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.observaciones}">
                        <div class="fieldcontain col-sm-6">
                           <span id="observaciones-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.observaciones.label" default="Observaciones:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="observaciones-label"><g:fieldValue bean="${movimientoInstance}" field="observaciones"/></span>

                        </div>
                    </g:if>
			    </div>
            </div>
			<g:form url="[resource:movimientoInstance, action:'delete']" method="DELETE">
                <div class="btn-group btn-group-xs">
                    <g:link class="btn btn-warning" action="edit" resource="${armeroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
			</g:form>
		</div>
	</body>
</html>
