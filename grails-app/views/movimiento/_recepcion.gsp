<div class="fieldcontain required form-group col-sm-6">
    <label for="armasOcupadas" class="col-sm-2 control-label">
        <g:message code="movimiento.armasOcupadasPolicia.label" default="Armas Ocupadas por el polic&iacute;a:" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:each in="${policiaInstance?.armas}" var="arma" status="a">
            ${(a+1)+'.- '+arma}<br>
        </g:each>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cartuchosRecibidos', 'error')} required form-group col-sm-6">
    <label for="cartuchosRecibidos" class="col-sm-2 control-label">
        <g:message code="movimiento.cartuchosRecibidos.label" default="Cartuchos Recibidos" />
    </label>
    <div class="col-sm-10">
        <g:textField class="form-control"  name="cartuchosRecibidos" type="number" value="${movimientoInstance?.cartuchosRecibidos}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cargadoresRecibidos', 'error')} required form-group col-sm-6">
    <label for="cargadoresRecibidos" class="col-sm-2 control-label">
        <g:message code="movimiento.cargadoresRecibidos.label" default="Cargadores Recibidos" />
    </label>
    <div class="col-sm-10">
        <g:field class="form-control" name="cargadoresRecibidos" type="number" value="${movimientoInstance?.cargadoresRecibidos}"/>
    </div>
</div>