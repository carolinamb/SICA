
<%@ page import="armamento.Cartucho" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cartucho.label', default: 'Cartucho')}" />
		<title><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.cartuchos"/></title>
	</head>
	<body>
        <div class="nav" role="navigation">
            <ul>
                <g:link class="btn btn-labeled icon fa fa-files-o btn-success btn-rounded" action="create">
                    <g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.cartucho"/>
                </g:link>
            </ul>
        </div>
		<div id="list-cartucho" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title"><g:message code="default.button.lista.label"/> <g:message code="default.palabra.minus.cartuchos"/></span>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>

                            <g:sortableColumn property="cantidad" title="${message(code: 'cartucho.cantidad.label', default: 'Cantidad')}" />
						    <g:sortableColumn property="calibre" title="${message(code: 'cartucho.calibre.label', default: 'Calibre')}" />

                        </tr>
                        </thead>
                        <tbody>
				            <g:each in="${cartuchoInstanceList}" status="i" var="cartuchoInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} mouse-over" onclick='document.location = "<g:createLink action='show' id='${cartuchoInstance.id}'/>"'>


                                    <td>${fieldValue(bean: cartuchoInstance, field: "cantidad")}</td>
					            	<td>${fieldValue(bean: cartuchoInstance, field: "calibre")}</td>
					
					            </tr>
				            </g:each>
				        </tbody>
			        </table>
                </div>
            </div>
			<div class="pagination">
				<g:paginate total="${cartuchoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
