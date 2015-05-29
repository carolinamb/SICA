<div class="fieldcontain required form-group col-sm-6">
    <label for="cartuchosEntregados" class="col-sm-2 control-label">
        <g:message code="movimiento.armasPolicia.label" default="Armas disponibles para el policia:" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:each in="${policiaInstance?.armas}" var="arma" status="a">
            <g:checkBox name="armasOcupadas" value="${arma.id}"/>${arma}
        </g:each>
    </div>
</div>