/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author JavierL.M
 */
public class ServicioComedor 
{
    private int idServicioComedor;
    private String nombrePlato;
    private int precio;
    private String tipoServicio;
    private String codEmpresa;

    public ServicioComedor() {
    }

    public ServicioComedor(int idServicioComedor, String nombrePlato, int precio, String tipoServicio, String codEmpresa) {
        this.idServicioComedor = idServicioComedor;
        this.nombrePlato = nombrePlato;
        this.precio = precio;
        this.tipoServicio = tipoServicio;
        this.codEmpresa = codEmpresa;
    }

    public int getIdServicioComedor() {
        return idServicioComedor;
    }

    public void setIdServicioComedor(int idServicioComedor) {
        this.idServicioComedor = idServicioComedor;
    }

    public String getNombrePlato() {
        return nombrePlato;
    }

    public void setNombrePlato(String nombrePlato) {
        this.nombrePlato = nombrePlato;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getTipoServicio() {
        return tipoServicio;
    }

    public void setTipoServicio(String tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
    
    
    
}
