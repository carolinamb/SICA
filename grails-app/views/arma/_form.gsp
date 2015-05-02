<%@ page import="armamento.Arma" %>



<div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'marca', 'error')} required">
	<label for="marca">
		<g:message code="arma.marca.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marca" required="" value="${armaInstance?.marca}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="arma.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${armaInstance?.tipo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="arma.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modelo" required="" value="${armaInstance?.modelo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'calibre', 'error')} required">
	<label for="calibre">
		<g:message code="arma.calibre.label" default="Calibre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="calibre" type="number" value="${armaInstance.calibre}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'matricula', 'error')} required">
	<label for="matricula">
		<g:message code="arma.matricula.label" default="Matricula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="matricula" required="" value="${armaInstance?.matricula}"/>

</div>

