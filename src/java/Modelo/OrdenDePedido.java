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
public class OrdenDePedido
{
    private int idOrdenPedido;
     private String  nombreProveedor;
     private String rutProveedor;
     private String fecha_orden;
     private int  numero_pedido;
     private String nomUsser;
     private int codEmpresa;

    public OrdenDePedido() {
    }

    public OrdenDePedido(int idOrdenPedido, String nombreProveedor, String rutProveedor, String fecha_orden, int numero_pedido, String nomUsser) {
        this.idOrdenPedido = idOrdenPedido;
        this.nombreProveedor = nombreProveedor;
        this.rutProveedor = rutProveedor;
        this.fecha_orden = fecha_orden;
        this.numero_pedido = numero_pedido;
        this.nomUsser = nomUsser;
    }

    public OrdenDePedido(int codEmpresa) {
        this.codEmpresa = codEmpresa;
    }

    public int getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(int codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
    

    public int getIdOrdenPedido() {
        return idOrdenPedido;
    }

    public void setIdOrdenPedido(int idOrdenPedido) {
        this.idOrdenPedido = idOrdenPedido;
    }

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    public String getRutProveedor() {
        return rutProveedor;
    }

    public void setRutProveedor(String rutProveedor) {
        this.rutProveedor = rutProveedor;
    }

    public String getFecha_orden() {
        return fecha_orden;
    }

    public void setFecha_orden(String fecha_orden) {
        this.fecha_orden = fecha_orden;
    }

    public int getNumero_pedido() {
        return numero_pedido;
    }

    public void setNumero_pedido(int numero_pedido) {
        this.numero_pedido = numero_pedido;
    }

    public String getNomUsser() {
        return nomUsser;
    }

    public void setNomUsser(String nomUsser) {
        this.nomUsser = nomUsser;
    }
     
     
     
}
