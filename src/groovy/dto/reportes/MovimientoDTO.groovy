package dto.reportes

import net.sf.jasperreports.engine.JRDataSource
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource

/**
 * Created by dell on 17/05/2015.
 */
class MovimientoDTO {

    private String policia
    private String cartuchosEntregados
    private String cartuchosRecibidos
    private Long cargadoresEntregados
    private Long cargadoresRecibidos
    private String observaciones
    private String turno
    private String armas
    private String region

    public getPolicia() {
        return this.policia
    }
    public void setPolicia(String policia) {
        this.policia = policia
    }
    public getArmas() {
        return this.armas
    }
    public void setArmas(String armas) {
        this.armas = armas
    }
    public getRegion() {
        return this.region
    }
    public void setRegion(String region) {
        this.region = region
    }
    public getCartuchosEntregados() {
        return this.cartuchosEntregados
    }
    public void setCartuchosEntregados(String cartuchosEntregados) {
        this.cartuchosEntregados = cartuchosEntregados
    }
    public getCartuchosRecibidos() {
        return this.cartuchosRecibidos
    }
    public void setCartuchosRecibidos(String cartuchosRecibidos) {
        this.cartuchosRecibidos = cartuchosRecibidos
    }
    public getCargadoresEntregados() {
        return this.cargadoresEntregados
    }
    public void setCargadoresEntregados(Long cargadoresEntregados) {
        this.cargadoresEntregados = cargadoresEntregados
    }
    public getCargadoresRecibidos() {
        return this.cargadoresRecibidos
    }
    public void setCargadoresRecibidos(Long cargadoresRecibidos) {
        this.cargadoresRecibidos = cargadoresRecibidos
    }
    public getObservaciones() {
        return this.observaciones
    }
    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones
    }
    public getTurno() {
        return this.turno
    }
    public void setTurno(String turno) {
        this.turno = turno
    }
}
