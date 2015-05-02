<%@ page import="personal.Region" %>



<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="region.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${regionInstance?.descripcion}"/>

</div>

