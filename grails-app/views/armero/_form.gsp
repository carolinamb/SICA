<%@ page import="personal.Armero" %>

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
        <div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'nombre', 'error')} required form-group col-sm-6">
            <label for="nombre" class="col-sm-2 control-label">
                <g:message code="armero.nombre.label" default="Nombre" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="nombre" required="" class="form-control" value="${armeroInstance?.nombre}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'primerApellido', 'error')} required form-group col-sm-6">
            <label for="primerApellido" class="col-sm-2 control-label">
                <g:message code="armero.primerApellido.label" default="Primer Apellido" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="primerApellido" required="" class="form-control" value="${armeroInstance?.primerApellido}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'segundoApellido', 'error')} required form-group col-sm-6">
            <label for="segundoApellido" class="col-sm-2 control-label">
                <g:message code="armero.segundoApellido.label" default="Segundo Apellido" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="segundoApellido" required="" class="form-control" value="${armeroInstance?.segundoApellido}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: armeroInstance, field: 'turno', 'error')} required form-group col-sm-6">
            <label for="turno" class="col-sm-2 control-label">
                <g:message code="armero.turno.label" default="Turno" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="turno" name="turno.id" from="${catalogo.Turno.list()}" optionValue="descripcion" optionKey="id" required="" value="${armeroInstance?.turno?.id}" class="many-to-one form-control"/>
            </div>
        </div>
    </div>
</div>

