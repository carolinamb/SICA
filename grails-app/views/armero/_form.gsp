<%@ page import="personal.Armero" %>



<div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="armero.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${armeroInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'primerApellido', 'error')} required">
	<label for="primerApellido">
		<g:message code="armero.primerApellido.label" default="Primer Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primerApellido" required="" value="${armeroInstance?.primerApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'segundoApellido', 'error')} required">
	<label for="segundoApellido">
		<g:message code="armero.segundoApellido.label" default="Segundo Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="segundoApellido" required="" value="${armeroInstance?.segundoApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'turno', 'error')} required">
	<label for="turno">
		<g:message code="armero.turno.label" default="Turno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="turno" name="turno.id" from="${catalogo.Turno.list()}" optionValue="descripcion" optionKey="id" required="" value="${armeroInstance?.turno?.id}" class="many-to-one"/>

</div>

