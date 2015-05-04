
<%@ page import="personal.Puesto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'puesto.label', default: 'Puesto')}" />
		<title><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.puestos"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.puesto"/>
                </g:link>
            </ul>
        </div>
		<div id="list-puesto" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.puestos"/></span>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
						    <g:sortableColumn property="descripcion" title="${message(code: 'puesto.descripcion.label', default: 'Descripcion')}" />

                        </tr>
                        </thead>
                        <tbody>
				            <g:each in="${puestoInstanceList}" status="i" var="puestoInstance">
					            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					            	<td><g:link action="show" id="${puestoInstance.id}">${fieldValue(bean: puestoInstance, field: "descripcion")}</g:link></td>
					
				            	</tr>
				            </g:each>
				        </tbody>
			        </table>
                </div>
            </div>
			<div class="pagination">
				<g:paginate total="${puestoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
