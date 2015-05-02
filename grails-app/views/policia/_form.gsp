<%@ page import="personal.Policia" %>



<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="policia.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" required="" value="${policiaInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="policia.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${policiaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'primerApellido', 'error')} required">
	<label for="primerApellido">
		<g:message code="policia.primerApellido.label" default="Primer Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primerApellido" required="" value="${policiaInstance?.primerApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'segundoApellido', 'error')} required">
	<label for="segundoApellido">
		<g:message code="policia.segundoApellido.label" default="Segundo Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="segundoApellido" required="" value="${policiaInstance?.segundoApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'region', 'error')} required">
	<label for="region">
		<g:message code="policia.region.label" default="Region" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="region" name="region.id" from="${personal.Region.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.region?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'puesto', 'error')} required">
	<label for="puesto">
		<g:message code="policia.puesto.label" default="Puesto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="puesto" name="puesto.id" from="${personal.Puesto.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.puesto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'grado', 'error')} required">
	<label for="grado">
		<g:message code="policia.grado.label" default="Grado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grado" name="grado.id" from="${personal.Grado.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.grado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'adscripcion', 'error')} required">
	<label for="adscripcion">
		<g:message code="policia.adscripcion.label" default="Adscripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="adscripcion" name="adscripcion.id" from="${personal.Adscripcion.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.adscripcion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'cartuchosAbastecidos', 'error')} required">
	<label for="cartuchosRecomendados">
		<g:message code="policia.cartuchosRecomendados.label" default="Cartuchos Abastecidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cartuchosAbastecidos" type="number" value="${policiaInstance.cartuchosAbastecidos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'cargadoresAbastecidos', 'error')} required">
	<label for="cargadoresRecomendados">
		<g:message code="policia.cargadoresRecomendados.label" default="Cargadores Abastecidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cargadoresAbastecidos" type="number" value="${policiaInstance.cargadoresAbastecidos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'armas', 'error')} ">
	<label for="armas">
		<g:message code="policia.armas.label" default="Armas" />
		
	</label>
	<g:select name="armas" from="${armamento.Arma.list()}" optionValue="tipo" multiple="multiple" optionKey="id" size="5" value="${policiaInstance?.armas*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'cartuchos', 'error')} ">
	<label for="cartuchos">
		<g:message code="policia.cartuchos.label" default="Cartuchos" />
		
	</label>
	<g:select name="cartuchos" from="${armamento.Cartucho.list()}" optionValue="calibre" multiple="multiple" optionKey="id" size="5" value="${policiaInstance?.cartuchos*.id}" class="many-to-many"/>

</div>

