<%@ page import="personal.Policia" %>


<div class="panel">
    <div class="panel-heading">
        <g:if test="${edit}">
            <span class="panel-title"><g:message code="default.button.editar.label"/> <g:message code="default.palabra.minus.policia"/></span>
        </g:if>
        <g:if test="${!edit}">
            <span class="panel-title"><g:message code="default.button.crearNuevo.label"/> <g:message code="default.palabra.minus.policia"/></span>
        </g:if>
    </div>
    <div class="panel-body">
        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'clave', 'error')} required form-group col-sm-6">
	        <label for="clave" class="col-sm-2 control-label">
		        <g:message code="policia.clave.label" default="Clave" />
		        <span class="required-indicator">*</span>
	        </label>
            <div class="col-sm-10">
	             <g:textField name="clave" required="" value="${policiaInstance?.clave}" class="form-control"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'nombre', 'error')} required form-group col-sm-6">
            <label for="nombre" class="col-sm-2 control-label">
                <g:message code="policia.nombre.label" default="Nombre" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="nombre"  class="form-control" required="" value="${policiaInstance?.nombre}"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'primerApellido', 'error')} required form-group col-sm-6">
            <label for="primerApellido" class="col-sm-2 control-label">
                <g:message code="policia.primerApellido.label" default="Primer Apellido" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="primerApellido" required="" value="${policiaInstance?.primerApellido}" class="form-control"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'segundoApellido', 'error')} required form-group col-sm-6">
            <label for="segundoApellido" class="col-sm-2 control-label">
                <g:message code="policia.segundoApellido.label" default="Segundo Apellido" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField name="segundoApellido" required="" value="${policiaInstance?.segundoApellido}" class="form-control"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'region', 'error')} required form-group col-sm-6">
            <label for="region" class="col-sm-2 control-label">
                <g:message code="policia.region.label" default="Region" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="region" name="region.id" from="${personal.Region.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.region?.id}" class="form-control many-to-one"/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'puesto', 'error')} required form-group col-sm-6">
            <label for="puesto" class="col-sm-2 control-label">
                <g:message code="policia.puesto.label" default="Puesto" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                    <g:select id="puesto" name="puesto.id"  class="many-to-one form-control" from="${personal.Puesto.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.puesto?.id}" />
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'grado', 'error')} required form-group col-sm-6">
            <label for="grado" class="col-sm-2 control-label">
                <g:message code="policia.grado.label" default="Grado" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="grado" name="grado.id"  class="many-to-one form-control" from="${personal.Grado.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.grado?.id}" />
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'adscripcion', 'error')} required form-group col-sm-6">
            <label for="adscripcion" class="col-sm-2 control-label">
                <g:message code="policia.adscripcion.label" default="Adscripcion" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="adscripcion" name="adscripcion.id"  class="many-to-one form-control" from="${personal.Adscripcion.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.adscripcion?.id}" />
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'turno', 'error')} required form-group col-sm-6">
            <label for="turno" class="col-sm-2 control-label">
                <g:message code="policia.grado.label" default="Turno" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:select id="turno" name="turno.id"  class=" many-to-one form-control" from="${catalogo.Turno.list()}" optionValue="descripcion" optionKey="id" required="" value="${policiaInstance?.turno?.id}" />
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'cartuchosAbastecidos', 'error')} required form-group col-sm-6">
            <label for="cartuchosAbastecidos" class="col-sm-2 control-label">
                <g:message code="policia.cartuchosRecomendados.label" default="Cartuchos Abastecidos" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:textField  name="cartuchosAbastecidos"  class="many-to-one form-control" type="number" value="${policiaInstance.cartuchosAbastecidos}" required=""/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'cargadoresAbastecidos', 'error')} required form-group col-sm-6">
            <label for="cargadoresAbastecidos" class="col-sm-2 control-label">
                <g:message code="policia.cargadoresRecomendados.label" default="Cargadores Abastecidos" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-sm-10">
                <g:field name="cargadoresAbastecidos"  class="many-to-one form-control" type="number" value="${policiaInstance.cargadoresAbastecidos}" required=""/>
            </div>
        </div>

        <div class="fieldcontain ${hasErrors(bean: policiaInstance, field: 'armas', 'error')} required form-group col-sm-6">
            <label for="armas" class="col-sm-2 control-label">
                <g:message code="policia.armas.label" default="Armas" />

            </label>
            <div class="col-sm-10">
                <g:select name="armas"  class="many-to-one form-control" from="${armamento.Arma.list()}" optionValue="${{it.modelo+'/'+it.matricula+'/'+it.marca}}" multiple="multiple" optionKey="id" size="5" value="${policiaInstance?.armas*.id}" />
            </div>
        </div>
    </div>
</div>

