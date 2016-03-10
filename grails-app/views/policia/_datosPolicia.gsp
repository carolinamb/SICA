<div class="panel colourable">
    <div class="panel-heading">
        <span class="panel-title"><g:message code="default.button.mostrarDetalle.label"/> <g:message code="default.palabra.minus.policia"/></span>
    </div>
    <div class="panel-body">

        <g:if test="${policiaInstance?.clave}">
            <div class="fieldcontain col-sm-6">
                <span id="clave-label" class="property-label"><g:message code="policia.clave.label" default="Clave" /></span>

                <span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${policiaInstance}" field="clave"/></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.nombre}">
            <div class="fieldcontain col-sm-6">
                <span id="nombre-label" class="property-label"><g:message code="policia.nombre.label" default="Nombre" /></span>

                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${policiaInstance}" field="nombre"/></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.primerApellido}">
            <div class="fieldcontain col-sm-6">
                <span id="primerApellido-label" class="property-label"><g:message code="policia.primerApellido.label" default="Primer Apellido" /></span>

                <span class="property-value" aria-labelledby="primerApellido-label"><g:fieldValue bean="${policiaInstance}" field="primerApellido"/></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.segundoApellido}">
            <div class="fieldcontain col-sm-6">
                <span id="segundoApellido-label" class="property-label"><g:message code="policia.segundoApellido.label" default="Segundo Apellido" /></span>

                <span class="property-value" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${policiaInstance}" field="segundoApellido"/></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.region}">
            <div class="fieldcontain col-sm-6">
                <span id="region-label" class="property-label"><g:message code="policia.region.label" default="Region" /></span>

                <span class="property-value" aria-labelledby="region-label"><g:link controller="region" action="show" id="${policiaInstance?.region?.id}">${policiaInstance?.region?.descripcion?.encodeAsHTML()}</g:link></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.puesto}">
            <div class="fieldcontain col-sm-6">
                <span id="puesto-label" class="property-label"><g:message code="policia.puesto.label" default="Puesto" /></span>

                <span class="property-value" aria-labelledby="puesto-label"><g:link controller="puesto" action="show" id="${policiaInstance?.puesto?.id}">${policiaInstance?.puesto?.descripcion?.encodeAsHTML()}</g:link></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.grado}">
            <div class="fieldcontain col-sm-6">
                <span id="grado-label" class="property-label"><g:message code="policia.grado.label" default="Grado" /></span>

                <span class="property-value" aria-labelledby="grado-label"><g:link controller="grado" action="show" id="${policiaInstance?.grado?.id}">${policiaInstance?.grado?.descripcion?.encodeAsHTML()}</g:link></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.adscripcion}">
            <div class="fieldcontain col-sm-6">
                <span id="adscripcion-label" class="property-label"><g:message code="policia.adscripcion.label" default="Adscripcion" /></span>

                <span class="property-value" aria-labelledby="adscripcion-label"><g:link controller="adscripcion" action="show" id="${policiaInstance?.adscripcion?.id}">${policiaInstance?.adscripcion?.descripcion?.encodeAsHTML()}</g:link></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.turno}">
            <div class="fieldcontain col-sm-6">
                <span id="turno-label" class="property-label"><g:message code="policia.turno.label" default="Turno" /></span>

                <span class="property-value" aria-labelledby="turno-label"><g:link controller="turno" action="show" id="${policiaInstance?.turno?.id}">${policiaInstance?.turno?.descripcion?.encodeAsHTML()}</g:link></span>

            </div>
        </g:if>

        <g:if test="${policiaInstance?.cartuchos}">
            <div class="fieldcontain col-sm-6">
                <span id="cartuchos-label" class="property-label"><g:message code="policia.cartuchos.label" default="Cartuchos" /></span>

                <g:each in="${policiaInstance.cartuchos}" var="c">
                    <span class="property-value" aria-labelledby="cartuchos-label"><g:link controller="cartucho" action="show" id="${c.id}">${c?.cantudad?.encodeAsHTML()} ${c?.calibre?.encodeAsHTML()}</g:link></span>
                </g:each>

            </div>
        </g:if>

        <<g:if test="${policiaInstance?.cargadores}">
        <div class="fieldcontain col-sm-6">
            <span id="cargadores-label" class="property-label"><g:message code="policia.cargadores.label" default="Cargadores" /></span>

            <g:each in="${policiaInstance.cargadores}" var="c">
                <span class="property-value" aria-labelledby="cargadores-label"><g:link controller="cargadores" action="show" id="${policiaInstance?.cargadores?.id}">${policiaInstance?.cargadores?.descripcion?.encodeAsHTML()}</g:link></span>
            </g:each>

        </div>
    </g:if>

        <g:if test="${policiaInstance?.armas}">
            <div class="fieldcontain col-sm-6">
                <span id="armas-label" class="property-label"><g:message code="policia.armas.label" default="Armas" /></span>

                <g:each in="${policiaInstance.armas}" var="a">
                    <span class="property-value" aria-labelledby="armas-label"><g:link controller="arma" action="show" id="${a.id}">${a?.marca?.encodeAsHTML()} ${a?.modelo?.encodeAsHTML()} ${a?.matricula?.encodeAsHTML()}</g:link></span>
                </g:each>

            </div>
        </g:if>


    </div>
</div>