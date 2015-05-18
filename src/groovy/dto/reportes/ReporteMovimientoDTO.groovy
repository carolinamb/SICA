package dto.reportes

import net.sf.jasperreports.engine.JRDataSource
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource

/**
 * Created by dell on 17/05/2015.
 */
class ReporteMovimientoDTO {

    private List movimientos = new ArrayList()
    private JRDataSource movimientosDS


    public List getMovimientos() {
        return movimientos
    }
    public void setMovimientos(List movimientos) {
        this.movimientos = movimientos;
    }
    public JRDataSource getMovimientosDS() {
        return new JRBeanCollectionDataSource(movimientos);
    }
    public void setArmasDS(JRDataSource armasDS) {
        this.armasDS = armasDS;
    }
}
