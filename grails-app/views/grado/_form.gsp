<%@ page import="personal.Grado" %>



<div class="fieldcontain ${hasErrors(bean: gradoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="grado.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${gradoInstance?.descripcion}"/>

</div>

