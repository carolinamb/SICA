<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cartuchosEntregados', 'error')} required form-group col-sm-6">
    <label for="cartuchosEntregados" class="col-sm-2 control-label">
        <g:message code="movimiento.cartuchosEntregados.label" default="Cartuchos Entregados" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:textField  name="cartuchosEntregados" type="number" value="${movimientoInstance?.cartuchosEntregados}" required=""/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cargadoresEntregados', 'error')} required form-group col-sm-6">
    <label for="cargadoresEntregados" class="col-sm-2 control-label">
        <g:message code="movimiento.cargadoresEntregados.label" default="Cargadores Entregados" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:field name="cargadoresEntregados" type="number" value="${movimientoInstance?.cargadoresEntregados}" required=""/>
    </div>
</div>