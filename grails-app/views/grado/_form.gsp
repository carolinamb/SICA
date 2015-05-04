<%@ page import="personal.Grado" %>

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
        <div class="fieldcontain ${hasErrors(bean: gradoInstance, field: 'descripcion', 'error')} required form-group col-sm-6">
	        <label for="descripcion"  class="col-sm-2 control-label">
		        <g:message code="grado.descripcion.label" default="Descripcion" />
		        <span class="required-indicator">*</span>
	        </label>
            <div class="col-sm-10">
	            <g:textField name="descripcion" required="" value="${gradoInstance?.descripcion}"/>
            </div>
        </div>
    </div>
</div>

