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
public class OrdenDeCompra 
{
    private int idordenCompra;
    private int idcliente;
    private int idhabiacion;
    private int idhuesped;
    private String fechaHora;
    private String usuario;
    private String codEmpresa;

    public OrdenDeCompra() {
    }

    public OrdenDeCompra(int idordenCompra, int idcliente, int idhabiacion, int idhuesped, String fechaHora, String usuario, String codEmpresa) {
        this.idordenCompra = idordenCompra;
        this.idcliente = idcliente;
        this.idhabiacion = idhabiacion;
        this.idhuesped = idhuesped;
        this.fechaHora = fechaHora;
        this.usuario = usuario;
        this.codEmpresa = codEmpresa;
    }

    public int getIdordenCompra() {
        return idordenCompra;
    }

    public void setIdordenCompra(int idordenCompra) {
        this.idordenCompra = idordenCompra;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getIdhabiacion() {
        return idhabiacion;
    }

    public void setIdhabiacion(int idhabiacion) {
        this.idhabiacion = idhabiacion;
    }

    public int getIdhuesped() {
        return idhuesped;
    }

    public void setIdhuesped(int idhuesped) {
        this.idhuesped = idhuesped;
    }

    public String getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(String fechaHora) {
        this.fechaHora = fechaHora;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
   

    
}
