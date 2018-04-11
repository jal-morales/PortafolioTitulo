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
public class DetallePedido 
{
    private int idDetallePedido;
    private int idOrdenPedido;
    private String descripcion;
    private int cantidad;
    private int valor;
    private int valoraPagar;

    public DetallePedido() {
    }

    public DetallePedido(int idDetallePedido, int idOrdenPedido, String descripcion, int cantidad, int valor, int valoraPagar) {
        this.idDetallePedido = idDetallePedido;
        this.idOrdenPedido = idOrdenPedido;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.valor = valor;
        this.valoraPagar = valoraPagar;
    }

    public int getIdDetallePedido() {
        return idDetallePedido;
    }

    public void setIdDetallePedido(int idDetallePedido) {
        this.idDetallePedido = idDetallePedido;
    }

    public int getIdOrdenPedido() {
        return idOrdenPedido;
    }

    public void setIdOrdenPedido(int idOrdenPedido) {
        this.idOrdenPedido = idOrdenPedido;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public int getValoraPagar() {
        return valoraPagar;
    }

    public void setValoraPagar(int valoraPagar) {
        this.valoraPagar = valoraPagar;
    }
    
    
}
