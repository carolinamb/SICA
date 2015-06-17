package dto.reportes

import net.sf.jasperreports.engine.JRDataSource
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource

/**
 * Created by dell on 17/05/2015.
 */
class MovimientoDTO {

    private String policia
    private String turno
    private String armas
    private String region
    private String fechaEntrega
    private String fechaRecepcion

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
    public getTurno() {
        return this.turno
    }
    public void setTurno(String turno) {
        this.turno = turno
    }
    public getFechaEntrega() {
        return this.fechaEntrega
    }
    public void setFechaEntrega(String fechaEntrega) {
        this.fechaEntrega = fechaEntrega
    }
    public getFechaRecepcion() {
        return this.fechaRecepcion
    }
    public void setFechaRecepcion(String fechaRecepcion) {
        this.fechaRecepcion = fechaRecepcion
    }
}
