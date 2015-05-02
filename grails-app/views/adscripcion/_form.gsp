<%@ page import="personal.Adscripcion" %>



<div class="fieldcontain ${hasErrors(bean: adscripcionInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="adscripcion.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${adscripcionInstance?.descripcion}"/>

</div>

