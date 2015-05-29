<h2>
    <g:if test="${!movimientoInstance?.fechaEntrega}">ENTREGA DE ARMAMENTO</g:if>
    <g:else>RECEPCION DE ARMAMENTO</g:else>
</h2>

<div id="informacionPolicia">
    <g:render template="/policia/datosPolicia"/>
</div>

<div hidden="">
    <g:textField name="id" value="${movimientoInstance?.id}"/>
</div>

<div hidden="">
    <input id="policia" name="policia" value="${policiaInstance?.id}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'armero', 'error')} required form-group col-sm-6">
    <label for="armero" class="col-sm-2 control-label">
        <g:message code="movimiento.armero.label" default="Armero" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:select id="armero" name="armero.id" from="${personal.Armero.list()}" optionValue="nombre" optionKey="id" required="" value="${movimientoInstance?.armero?.id}" class="many-to-one form-control"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'turno', 'error')} required form-group col-sm-6">
    <label for="turno" class="col-sm-2 control-label">
        <g:message code="movimiento.turno.label" default="Turno" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:select id="turno" name="turno.id" from="${catalogo.Turno.list()}" optionValue="descripcion" optionKey="id" required="" value="${movimientoInstance?.turno?.id}" class="many-to-one form-control"/>
    </div>
</div>

<g:if test="${!movimientoInstance?.fechaEntrega}">
    <g:render template="entrega"/>
</g:if>
<g:if test="${movimientoInstance?.fechaEntrega}">
    <g:render template="recepcion"/>
</g:if>