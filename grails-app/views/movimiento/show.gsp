
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

                    <g:if test="${movimientoInstance?.fechaEntrega}">
                        <div class="fieldcontain col-sm-6">
                           <span id="fechaEntrega-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.fechaEntrega.label" default="Fecha y Hora de Entrega:" /></span>

                            <span class="property-valu col-sm-8e" aria-labelledby="fechaEntrega-label"><g:formatDate date="${movimientoInstance?.fechaEntrega}" /></span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.fechaRecepcion}">
                        <div class="fieldcontain col-sm-6">
                           <span id="fechaRecepcion-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.fechaRecepcion.label" default="Fecha y Hora de Recepcion:" /></span>

                            <span class="property-valu col-sm-8e" aria-labelledby="fechaRecepcion-label"><g:formatDate date="${movimientoInstance?.fechaRecepcion}" /></span>

                        </div>
                    </g:if>

                    <g:if test="${movimientoInstance?.armasOcupadas}">
                        <div class="fieldcontain col-sm-6">
                            <span id="armasEntregadas-label" class="property-label col-sm-4 text-bold"><g:message code="movimiento.armasEntregadas.label" default="Armas Entregadas al Policia:" /></span>

                            <span class="property-value col-sm-8" aria-labelledby="armasEntregadas-label">
                            <g:each in="${movimientoInstance.armasOcupadas}" var="arma" status="i">
                                Arma ${i+1}:${arma}</span>
                            </g:each>
                            <ul>
                                <g:each in="${movimientoInstance?.armasOcupadas}" var="armaOcupada" status="i"><li>
                                    ${armaOcupada}</li></g:each>
                            </ul>

                        </div>
                    </g:if>
			    </div>
            </div>
			<g:form url="[resource:movimientoInstance, action:'delete']" method="DELETE">
                <div class="btn-group btn-group-xs">
                    <g:link class="btn btn-warning" action="edit" resource="${movimientoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
			</g:form>
		</div>
	</body>
</html>
