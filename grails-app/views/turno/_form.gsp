<%@ page import="catalogo.Turno" %>



<div class="fieldcontain ${hasErrors(bean: turnoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="turno.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${turnoInstance?.descripcion}"/>

</div>

