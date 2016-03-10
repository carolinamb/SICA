<%@ page import="operacionDiaria.Movimiento" %>


<div class="panel">
    <div class="panel-heading">
        <g:if test="${edit}">
            <span class="panel-title"><g:message code="default.button.editar.label"/> <g:message code="default.palabra.minus.movimiento"/></span>
        </g:if>

    </div>
    <div class="panel-body">
        <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'policia', 'error')} required form-group col-sm-6">
            <label for="policia" class="col-sm-2 control-label">
                <g:message code="movimiento.policia.label" default="Clave del policia" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <input id="clavePolicia" name="clavePolicia" class="form-control" onchange="${remoteFunction(
                    controller: 'movimiento',
                    action: 'buscarPoliciaClave',
                    params: '\'clave=\' + this.value',
                    update: 'informacionGeneral'
                )}"/>
            </div>
        </div>

        <div id="informacionGeneral"></div>
    </div>
</div>
