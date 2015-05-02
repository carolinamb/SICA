<%@ page import="personal.Puesto" %>



<div class="fieldcontain ${hasErrors(bean: puestoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="puesto.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${puestoInstance?.descripcion}"/>

</div>

