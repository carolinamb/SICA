<%@ page import="armamento.Arma" %>


<div class="panel">
    <div class="panel-heading">
        <g:if test="${edit}">
            <span class="panel-title"><g:message code="default.button.editar.label"/> <g:message code="default.palabra.minus.arma"/></span>
        </g:if>
        <g:if test="${!edit}">
            <span class="panel-title"><g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.arma"/></span>
        </g:if>
    </div>
    <div class="panel-body">
        <div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'marca', 'error')} required form-group col-sm-6">
            <label for="marca" class="col-sm-4 control-label">
               <g:message code="arma.marca.label" default="Marca" />
               <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-8">
               <g:textField name="marca" class="form-control" required="" value="${armaInstance?.marca}"/>
            </div>
        </div>
        <div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'tipo', 'error')} required form-group col-sm-6">
            <label for="tipo" class="col-sm-4 control-label">
                <g:message code="arma.tipo.label" default="Tipo" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-8">
                <g:textField name="tipo" class="form-control" required="" value="${armaInstance?.tipo}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'modelo', 'error')} required form-group col-sm-6">
            <label for="modelo" class="col-sm-4 control-label">
                <g:message code="arma.modelo.label" default="Modelo" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-8">
                <g:textField name="modelo" class="form-control" required="" value="${armaInstance?.modelo}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'calibre', 'error')} required form-group col-sm-6">
            <label for="calibre" class="col-sm-4 control-label">
                <g:message code="arma.calibre.label" default="Calibre" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-8">
                <g:textField name="calibre" class="form-control" type="number" required="" value="${armaInstance.calibre}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'matricula', 'error')} required form-group col-sm-6">
            <label for="matricula" class="col-sm-4 control-label">
                <g:message code="arma.matricula.label" default="Matricula" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-8">
                <g:textField name="matricula" class="form-control" required="" value="${armaInstance?.matricula}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'cantidadCartuchos', 'error')} required form-group col-sm-6">
            <label for="cantidad" class="col-sm-8 control-label">
                <g:message code="cartuchos.cantidad.label" default="Cantidad de Cartuchos a Suministrar" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-4">
                <g:field name="cantidadCartuchos" type="number" class="form-control" value="${armaInstance.cantidadCartuchos}" required=""/>
            </div>
        </div>
        <div class="fieldcontain ${hasErrors(bean: armaInstance, field: 'cantidadCargadores', 'error')} required form-group col-sm-6">
            <label for="cantidad" class="col-sm-8 control-label">
                <g:message code="cargadores.cantidad.label" default="Cantidad de Cargadores a Suministrar" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-4">
                <g:field name="cantidadCargadores" type="number" class="form-control" value="${armaInstance.cantidadCargadores}" required=""/>
            </div>
        </div>
    </div>
</div>

