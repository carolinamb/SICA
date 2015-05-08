
<%@ page import="personal.Adscripcion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'adscripcion.label', default: 'Adscripcion')}" />
		<title><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.adscripciones"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.adscripcion"/>
                </g:link>
            </ul>
        </div>
		<div id="list-adscripcion" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.adscripciones"/></span>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
						    <g:sortableColumn property="descripcion" title="${message(code: 'adscripcion.descripcion.label', default: 'Descripcion')}" />
					
					    </tr>
				        </thead>
				        <tbody>
				            <g:each in="${adscripcionInstanceList}" status="i" var="adscripcionInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} mouse-over" onclick='document.location = "<g:createLink action='show' id='${adscripcionInstance.id}'/>"'>

                                    <td>${fieldValue(bean: adscripcionInstance, field: "descripcion")}</td>
					            </tr>
				            </g:each>
				        </tbody>
			        </table>
                </div>
            </div>
			<div class="pagination">
				<g:paginate total="${adscripcionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
