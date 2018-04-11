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
public class OrdenServicioComedor
{
   private int idOrdenServicioComedor;
   private int idCliente;
   private String codEmpresa;
   private int cantidad;
   private int precio;
   private String nombrePlato;

    public OrdenServicioComedor() {
    }

    public OrdenServicioComedor(int idOrdenServicioComedor, int idCliente, String codEmpresa, int cantidad, int precio, String nombrePlato) {
        this.idOrdenServicioComedor = idOrdenServicioComedor;
        this.idCliente = idCliente;
        this.codEmpresa = codEmpresa;
        this.cantidad = cantidad;
        this.precio = precio;
        this.nombrePlato = nombrePlato;
    }

    public int getIdOrdenServicioComedor() {
        return idOrdenServicioComedor;
    }

    public void setIdOrdenServicioComedor(int idOrdenServicioComedor) {
        this.idOrdenServicioComedor = idOrdenServicioComedor;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getNombrePlato() {
        return nombrePlato;
    }

    public void setNombrePlato(String nombrePlato) {
        this.nombrePlato = nombrePlato;
    }
   
   
   
}
