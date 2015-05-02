<%@ page import="armamento.Cartucho" %>



<div class="fieldcontain ${hasErrors(bean: cartuchoInstance, field: 'marca', 'error')} required">
	<label for="marca">
		<g:message code="cartucho.marca.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marca" required="" value="${cartuchoInstance?.marca}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cartuchoInstance, field: 'calibre', 'error')} required">
	<label for="calibre">
		<g:message code="cartucho.calibre.label" default="Calibre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="calibre" type="number" value="${cartuchoInstance.calibre}" required=""/>

</div>

