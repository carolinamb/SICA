<%@ page import="armamento.Cargadores" %>



<div class="fieldcontain ${hasErrors(bean: cargadoresInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="cargadores.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${cargadoresInstance.cantidad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cargadoresInstance, field: 'estatus', 'error')} ">
	<label for="estatus">
		<g:message code="cargadores.estatus.label" default="Estatus" />
		
	</label>
	<g:checkBox name="estatus" value="${cargadoresInstance?.estatus}" />

</div>

