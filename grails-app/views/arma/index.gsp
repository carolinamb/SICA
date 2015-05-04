
<%@ page import="armamento.Arma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'arma.label', default: 'Arma')}" />
		<title><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.armas"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNueva.label"/> <g:message code="default.palabra.minus.arma"/>
                </g:link>
            </ul>
        </div>
		<div id="list-arma" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.armas"/></span>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <g:sortableColumn property="marca" title="${message(code: 'arma.marca.label', default: 'Marca')}" />

                            <g:sortableColumn property="tipo" title="${message(code: 'arma.tipo.label', default: 'Tipo')}" />

                            <g:sortableColumn property="modelo" title="${message(code: 'arma.modelo.label', default: 'Modelo')}" />

                            <g:sortableColumn property="calibre" title="${message(code: 'arma.calibre.label', default: 'Calibre')}" />

                            <g:sortableColumn property="matricula" title="${message(code: 'arma.matricula.label', default: 'Matricula')}" />
                        </tr>
                        </thead>
                        <tbody>
                            <g:each in="${armaInstanceList}" status="i" var="armaInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                    <td><g:link action="show" id="${armaInstance.id}">${fieldValue(bean: armaInstance, field: "marca")}</g:link></td>

                                    <td>${fieldValue(bean: armaInstance, field: "tipo")}</td>

                                    <td>${fieldValue(bean: armaInstance, field: "modelo")}</td>

                                    <td>${fieldValue(bean: armaInstance, field: "calibre")}</td>

                                    <td>${fieldValue(bean: armaInstance, field: "matricula")}</td>

					            </tr>
				            </g:each>
				        </tbody>
			        </table>
                </div>
            </div>
			<div class="pagination">
				<g:paginate total="${armaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
