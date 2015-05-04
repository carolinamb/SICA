
<%@ page import="personal.Policia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policia.label', default: 'Policia')}" />
		<title><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.policias"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.policia"/>
                </g:link>
            </ul>
        </div>
		<div id="list-policia" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.policias"/></span>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <g:sortableColumn property="clave" title="${message(code: 'policia.clave.label', default: 'Clave')}" />

                            <g:sortableColumn property="nombre" title="${message(code: 'policia.nombre.label', default: 'Nombre')}" />

                            <g:sortableColumn property="primerApellido" title="${message(code: 'policia.primerApellido.label', default: 'Primer Apellido')}" />

                            <g:sortableColumn property="segundoApellido" title="${message(code: 'policia.segundoApellido.label', default: 'Segundo Apellido')}" />
					
                            <th><g:message code="policia.region.label" default="Region" /></th>

                            <th><g:message code="policia.puesto.label" default="Puesto" /></th>

                        </tr>
                        </thead>
                        <tbody>
                            <g:each in="${policiaInstanceList}" status="i" var="policiaInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                    <td><g:link action="show" id="${policiaInstance.id}">${fieldValue(bean: policiaInstance, field: "clave")}</g:link></td>

                                    <td>${fieldValue(bean: policiaInstance, field: "nombre")}</td>

                                    <td>${fieldValue(bean: policiaInstance, field: "primerApellido")}</td>

                                    <td>${fieldValue(bean: policiaInstance, field: "segundoApellido")}</td>

                                    <td>${fieldValue(bean: policiaInstance?.region, field: "descripcion")}</td>

                                    <td>${fieldValue(bean: policiaInstance?.puesto, field: "descripcion")}</td>
                                </tr>
                            </g:each>
                        </tbody>
			        </table>
                 </div>
            </div>
			<div class="pagination">
				<g:paginate total="${policiaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
