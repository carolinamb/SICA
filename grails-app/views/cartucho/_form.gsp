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
        <div class="fieldcontain ${hasErrors(bean: cartuchoInstance, field: 'marca', 'error')} required form-group col-sm-6">
            <label for="marca" class="col-sm-2 control-label">
               <g:message code="cartucho.marca.label" default="Marca" />
                   <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="marca" class="form-control" required="" value="${cartuchoInstance?.marca}"/>
            </div>
        </div>
        <div class="fieldcontain ${hasErrors(bean: cartuchoInstance, field: 'calibre', 'error')} required form-group col-sm-6">
            <label for="calibre" class="col-sm-2 control-label">
                <g:message code="cartucho.calibre.label" default="Calibre" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:field class="form-control" name="calibre" type="number" value="${cartuchoInstance.calibre}" required=""/>
            </div>
        </div>
    </div>
</div>

