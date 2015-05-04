<div id="informacionPolicia">
    <g:render template="/policia/datosPolicia"/>
</div>

<div hidden="">
    <g:textField name="id" value="${movimientoInstance?.id}"/>
</div>

<div hidden="" class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'policia', 'error')} required form-group col-sm-6">
    <label for="policia" class="col-sm-2 control-label">
        <g:message code="movimiento.policia.label" default="Clave del policia" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:select id="policia" name="policia.id" from="${personal.Policia.list()}" optionValue="clave" optionKey="id" required="" value="${movimientoInstance?.policia?.id}" class="many-to-one"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'armero', 'error')} required form-group col-sm-6">
    <label for="armero" class="col-sm-2 control-label">
        <g:message code="movimiento.armero.label" default="Armero" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:select id="armero" name="armero.id" from="${personal.Armero.list()}" optionValue="nombre" optionKey="id" required="" value="${movimientoInstance?.armero?.id}" class="many-to-one"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'turno', 'error')} required form-group col-sm-6">
    <label for="turno" class="col-sm-2 control-label">
        <g:message code="movimiento.turno.label" default="Turno" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:select id="turno" name="turno.id" from="${catalogo.Turno.list()}" optionValue="descripcion" optionKey="id" required="" value="${movimientoInstance?.turno?.id}" class="many-to-one"/>
    </div>
</div>

<g:if test="${entrega}">
    <g:render template="entrega"/>
</g:if>
<g:if test="${!entrega}">
    <g:render template="recepcion"/>
</g:if>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'observaciones', 'error')} required form-group col-sm-6">
    <label for="observaciones" class="col-sm-2 control-label">
        <g:message code="movimiento.observaciones.label" default="Observaciones" />

    </label>
    <div class="col-sm-10">
        <g:textField name="observaciones" class="form-control" required="" value="${movimientoInstance?.observaciones}"/>
    </div>
</div>