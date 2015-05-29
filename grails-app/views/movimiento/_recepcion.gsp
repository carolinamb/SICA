<div class="fieldcontain required form-group col-sm-6">
    <label for="armasOcupadas" class="col-sm-2 control-label">
        <g:message code="movimiento.armasOcupadasPolicia.label" default="Armas Ocupadas por el polic&iacute;a:" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <g:each in="${policiaInstance?.armas}" var="arma" status="a">
            ${(a+1)+'.- '+arma}<br>
        </g:each>
    </div>
</div>