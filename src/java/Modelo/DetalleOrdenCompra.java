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
public class DetalleOrdenCompra 
{
    private int iddetalleCompra;
    private int idordenCompra;
    private int cantidad;
    private int precio;
    private String nombreervicio;
    private String codEmpresa;

    public DetalleOrdenCompra() {
    }

    public DetalleOrdenCompra(int iddetalleCompra, int idordenCompra, int cantidad, int precio, String nombreervicio, String codEmpresa) {
        this.iddetalleCompra = iddetalleCompra;
        this.idordenCompra = idordenCompra;
        this.cantidad = cantidad;
        this.precio = precio;
        this.nombreervicio = nombreervicio;
        this.codEmpresa = codEmpresa;
    }

    public int getIddetalleCompra() {
        return iddetalleCompra;
    }

    public void setIddetalleCompra(int iddetalleCompra) {
        this.iddetalleCompra = iddetalleCompra;
    }

    public int getIdordenCompra() {
        return idordenCompra;
    }

    public void setIdordenCompra(int idordenCompra) {
        this.idordenCompra = idordenCompra;
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

    public String getNombreervicio() {
        return nombreervicio;
    }

    public void setNombreervicio(String nombreervicio) {
        this.nombreervicio = nombreervicio;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
            
    
    
    
}
