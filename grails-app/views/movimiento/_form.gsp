<%@ page import="operacionDiaria.Movimiento" %>


<div class="panel">
    <div class="panel-heading">
        <g:if test="${edit}">
            <span class="panel-title"><g:message code="default.button.editar.label"/> <g:message code="default.palabra.minus.armero"/></span>
        </g:if>
        <g:if test="${!edit}">
            <span class="panel-title"><g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.armero"/></span>
        </g:if>
    </div>
        <div class="panel-body">
            <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'policia', 'error')} required form-group col-sm-6">
                <label for="policia" class="col-sm-2 control-label">
                    <g:message code="movimiento.policia.label" default="Policia" />
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

        <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cartuchosEntregados', 'error')} required form-group col-sm-6">
            <label for="cartuchosEntregados" class="col-sm-2 control-label">
                <g:message code="movimiento.cartuchosEntregados.label" default="Cartuchos Entregados" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:field name="cartuchosEntregados" type="number" value="${movimientoInstance.cartuchosEntregados}" required=""/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cartuchosRecibidos', 'error')} required form-group col-sm-6">
            <label for="cartuchosRecibidos" class="col-sm-2 control-label">
                <g:message code="movimiento.cartuchosRecibidos.label" default="Cartuchos Recibidos" />
            </label>
            <div class="col-sm-10">
                <g:field name="cartuchosRecibidos" type="number" value="${movimientoInstance.cartuchosRecibidos}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cargadoresEntregados', 'error')} required form-group col-sm-6">
            <label for="cargadoresEntregados" class="col-sm-2 control-label">
                <g:message code="movimiento.cargadoresEntregados.label" default="Cargadores Entregados" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:field name="cargadoresEntregados" type="number" value="${movimientoInstance.cargadoresEntregados}" required=""/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'cargadoresRecibidos', 'error')} required form-group col-sm-6">
            <label for="cargadoresRecibidos" class="col-sm-2 control-label">
                <g:message code="movimiento.cargadoresRecibidos.label" default="Cargadores Recibidos" />
            </label>
            <g:field name="cargadoresRecibidos" type="number" value="${movimientoInstance.cargadoresRecibidos}"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'fecha', 'error')} required form-group col-sm-6">
            <label for="fecha" class="col-sm-2 control-label">
                <g:message code="movimiento.fecha.label" default="Fecha" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:datePicker name="fecha" precision="day"  value="${movimientoInstance?.fecha}"  />
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'observaciones', 'error')} required form-group col-sm-6">
            <label for="observaciones" class="col-sm-2 control-label">
                <g:message code="movimiento.observaciones.label" default="Observaciones" />

            </label>
            <div class="col-sm-10">
                <g:textField name="observaciones" class="form-control" required="" value="${movimientoInstance?.observaciones}"/>
            </div>
        </div>
    </div>
</div>
