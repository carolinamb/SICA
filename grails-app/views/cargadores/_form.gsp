<%@ page import="armamento.Cargadores" %>

<div class="panel">
	<div class="panel-heading">
		<g:if test="${edit}">
			<span class="panel-title"><g:message code="default.button.editar.label"/> <g:message code="default.palabra.minus.cartucho"/></span>
		</g:if>
		<g:if test="${!edit}">
			<span class="panel-title"><g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.cartucho"/></span>
		</g:if>
	</div>
	<div class="panel-body">
		<div class="fieldcontain ${hasErrors(bean: cartuchoInstance, field: 'cantidad', 'error')} required form-group col-sm-6">
			<label for="cantidad">
				<g:message code="cargadores.cantidad.label" default="Cantidad" />
				<span class="required-indicator">*</span>
			</label>
			<div class="col-sm-10">
				<g:field name="cantidad" type="number" value="${cargadoresInstance.cantidad}" required=""/>
			</div>
		</div>
	</div>
</div>
