<%@ page import="armamento.Cartucho" %>

<div class="panel">
    <div class="panel-heading">
        <g:if test="${edit}">
            <span class="panel-title"><g:message code="default.button.editar.label"/> <g:message code="default.palabra.minus.cartucho"/></span>
        </g:if>
        <g:if test="${!edit}">
            <span class="panel-title"><g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.cartucho"/></span>
        </g:if>
    </div>
    <div class="panel-body">
        <div class="fieldcontain ${hasErrors(bean: cartuchoInstance, field: 'cantidad', 'error')} required form-group col-sm-6">
            <label for="cantidad" class="col-sm-2 control-label">
                <g:message code="cartucho.cantidad.label" default="Cantidad" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="cantidad" class="form-control" required="" value="${cartuchoInstance?.cantidad}"/>
            </div>
        </div>
        <div class="fieldcontain ${hasErrors(bean: cartuchoInstance, field: 'calibre', 'error')} required form-group col-sm-6">
            <label for="calibre" class="col-sm-2 control-label">
                <g:message code="cartucho.calibre.label" default="Calibre" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField  class="form-control" name="calibre" type="number" value="${cartuchoInstance.calibre}" required=""/>
            </div>
        </div>
    </div>
</div>

