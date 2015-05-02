<%@ page import="operacionDiaria.Movimiento" %>



<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'policia', 'error')} required">
	<label for="policia">
		<g:message code="movimiento.policia.label" default="Policia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="policia" name="policia.id" from="${personal.Policia.list()}" optionValue="clave" optionKey="id" required="" value="${movimientoInstance?.policia?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'armero', 'error')} required">
	<label for="armero">
		<g:message code="movimiento.armero.label" default="Armero" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="armero" name="armero.id" from="${personal.Armero.list()}" optionValue="nombre" optionKey="id" required="" value="${movimientoInstance?.armero?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'turno', 'error')} required">
	<label for="turno">
		<g:message code="movimiento.turno.label" default="Turno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="turno" name="turno.id" from="${catalogo.Turno.list()}" optionValue="descripcion" optionKey="id" required="" value="${movimientoInstance?.turno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cartuchosEntregados', 'error')} required">
	<label for="cartuchosEntregados">
		<g:message code="movimiento.cartuchosEntregados.label" default="Cartuchos Entregados" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cartuchosEntregados" type="number" value="${movimientoInstance.cartuchosEntregados}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cartuchosRecibidos', 'error')} required">
	<label for="cartuchosRecibidos">
		<g:message code="movimiento.cartuchosRecibidos.label" default="Cartuchos Recibidos" />
	</label>
	<g:field name="cartuchosRecibidos" type="number" value="${movimientoInstance.cartuchosRecibidos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cargadoresEntregados', 'error')} required">
	<label for="cargadoresEntregados">
		<g:message code="movimiento.cargadoresEntregados.label" default="Cargadores Entregados" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cargadoresEntregados" type="number" value="${movimientoInstance.cargadoresEntregados}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cargadoresRecibidos', 'error')} required">
	<label for="cargadoresRecibidos">
		<g:message code="movimiento.cargadoresRecibidos.label" default="Cargadores Recibidos" />
	</label>
	<g:field name="cargadoresRecibidos" type="number" value="${movimientoInstance.cargadoresRecibidos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="movimiento.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${movimientoInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'observaciones', 'error')} ">
	<label for="observaciones">
		<g:message code="movimiento.observaciones.label" default="Observaciones" />
		
	</label>
	<g:textField name="observaciones" value="${movimientoInstance?.observaciones}"/>

</div>

