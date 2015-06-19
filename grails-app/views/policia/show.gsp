
<%@ page import="personal.Policia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policia.label', default: 'Policia')}" />
        <title><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.grado"/></title>
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
                    <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.policia"/></span>
                </div>
                <div class="panel-body">
                    <g:if test="${policiaInstance?.clave}">
                        <div class="fieldcontain col-sm-6">
                            <span id="clave-label" class="property-label col-sm-4 text-bold"><g:message code="policia.clave.label" default="Clave" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="clave-label"><g:fieldValue bean="${policiaInstance}" field="clave"/></span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.nombre}">
                        <div class="fieldcontain col-sm-6">
                            <span id="nombre-label" class="property-label col-sm-4 text-bold"><g:message code="policia.nombre.label" default="Nombre" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="nombre-label"><g:fieldValue bean="${policiaInstance}" field="nombre"/></span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.primerApellido}">
                        <div class="fieldcontain col-sm-6">
                            <span id="primerApellido-label" class="property-label col-sm-4 text-bold"><g:message code="policia.primerApellido.label" default="Primer Apellido" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="primerApellido-label"><g:fieldValue bean="${policiaInstance}" field="primerApellido"/></span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.segundoApellido}">
                        <div class="fieldcontain col-sm-6">
                            <span id="segundorApellido-label" class="property-label col-sm-4 text-bold"><g:message code="policia.segundoApellido.label" default="Segundo Apellido" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${policiaInstance}" field="segundoApellido"/></span>
                        </div>
                    </g:if>


                    <g:if test="${policiaInstance?.region}">
                        <div class="fieldcontain col-sm-6">
                            <span id="region-label" class="property-label col-sm-4 text-bold"><g:message code="policia.region.label" default="Region" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="region-label">${policiaInstance?.region?.descripcion?.encodeAsHTML()}</span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.puesto}">
                        <div class="fieldcontain col-sm-6">
                            <span id="puesto-label" class="property-label col-sm-4 text-bold"><g:message code="policia.puesto.label" default="Puesto" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="puesto-label">${policiaInstance?.puesto?.descripcion?.encodeAsHTML()}</span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.grado}">
                        <div class="fieldcontain col-sm-6">
                            <span id="grado-label" class="property-label col-sm-4 text-bold"><g:message code="policia.grado.label" default="Grado" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="grado-label">${policiaInstance?.grado?.descripcion?.encodeAsHTML()}</span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.adscripcion}">
                        <div class="fieldcontain col-sm-6">
                            <span id="adscripcion-label" class="property-label col-sm-4 text-bold"><g:message code="policia.adscripcion.label" default="Adscripcion" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="adscripcion-label">${policiaInstance?.adscripcion?.descripcion?.encodeAsHTML()}</span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.turno}">
                        <div class="fieldcontain col-sm-6">
                            <span id="turno-label" class="property-label col-sm-4 text-bold"><g:message code="policia.turno.label" default="Turno" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="turno-label">${policiaInstance?.turno?.descripcion?.encodeAsHTML()}</span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.cargadoresAbastecidos}">
                        <div class="fieldcontain col-sm-6">
                            <span id="cargadoresAbastecidos-label" class="property-label col-sm-4 text-bold"><g:message code="policia.cargadoresAbastecidos.label" default="Cargadores Abastecidos" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="cargadoresAbastecidos-label"><g:fieldValue bean="${policiaInstance}" field="cargadoresAbastecidos"/></span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.cartuchosAbastecidos}">
                        <div class="fieldcontain col-sm-6">
                            <span id="cartuchosAbastecidos-label" class="property-label col-sm-4 text-bold"><g:message code="policia.cartuchosAbastecidos.label" default="Cartuchos Abastecidos" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="cartuchosAbastecidos-label"><g:fieldValue bean="${policiaInstance}" field="cartuchosAbastecidos"/></span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.cartuchos}">
                        <div class="fieldcontain col-sm-6">
                            <span id="cartuchos-label" class="property-label col-sm-4 text-bold"><g:message code="policia.cartuchos.label" default="Cartuchos" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="cartuchos-label"><g:fieldValue bean="${policiaInstance}" field="cartuchos"/></span>
                        </div>
                    </g:if>

                    <g:if test="${policiaInstance?.armas}">
                        <div class="fieldcontain col-sm-6">
                            <span id="armas-label" class="property-label col-sm-4 text-bold"><g:message code="policia.armas.label" default="Armas" /></span>
                            <span class="property-value col-sm-8" aria-labelledby="armas-label"><g:fieldValue bean="${policiaInstance}" field="armas"/></span>
                        </div>
                    </g:if>
                </div>
            </div>
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
    </body>
</html>
