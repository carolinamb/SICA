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

    public getPolicia() {
        return this.policia
    }
    public void setPolicia(String policia) {
        this.policia = policia
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
}
