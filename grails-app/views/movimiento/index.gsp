
<%@ page import="operacionDiaria.Movimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
		<title><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.movimientos"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.movimiento"/>
                </g:link>
                <g:link class="btn btn-lg btn-labeled btn-primary" controller="movimiento" action="reporte" format="PDF"
                        id="reporte"><span
                        class="btn-label icon fa fa-file-text-o"></span>Generar Reporte</g:link>
            </ul>
        </div>
		<div id="list-movimiento" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.movimientos"/></span>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <g:sortableColumn property="policia" title="${message(code: 'armero.policia.label', default: 'Policia')}" />

                            <th>Armas Ocupadas</th>

                            <g:sortableColumn property="armero" title="${message(code: 'armero.armero.label', default: 'Armero')}" />

                            <g:sortableColumn property="turno" title="${message(code: 'armero.turno.label', default: 'Turno')}" />

                            <g:sortableColumn property="fechaEntrega" title="${message(code: 'armero.fechaEntrega.label', default: 'Fecha y Hora de Entrega')}" />

                            <g:sortableColumn property="fechaRecepcion" title="${message(code: 'armero.fechaRecepcion.label', default: 'Fecha y Hora de Recepci&oacute;n')}" />

                            <th>Alertas de Entrega</th>

                        </tr>
                        </thead>
                        <tbody>
				            <g:each in="${movimientoInstanceList}" status="i" var="movimientoInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} mouse-over" onclick='document.location = "<g:createLink action='show' id='${movimientoInstance.id}'/>"'>
						            <td>${fieldValue(bean: movimientoInstance?.policia, field: "clave")}</td>

                                    <td>
                                        <ul>
                                            <g:each in="${movimientoInstance.armasOcupadas}" status="a" var="armaOcupada">
                                                <li>${armaOcupada}</li>
                                            </g:each>
                                        </ul>
                                    </td>
					
                                    <td>${fieldValue(bean: movimientoInstance?.armero, field: "id")}</td>

                                    <td>${fieldValue(bean: movimientoInstance?.turno, field: "descripcion")}</td>

                                    <td>${fieldValue(bean: movimientoInstance, field: "fechaEntrega")}</td>

                                    <td>${fieldValue(bean: movimientoInstance, field: "fechaRecepcion")}</td>

                                    <td>
                                        <g:if test="${movimientoInstance?.fechaRecepcion}"><div style="background-color: #358035;">.</div></g:if>
                                        <g:else><div style="background-color: #d2322d;">.</div></g:else>
                                    </td>

					            </tr>

				            </g:each>
			        	</tbody>
			        </table>
                </div>
            </div>
			<div class="pagination">
				<g:paginate total="${movimientoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
