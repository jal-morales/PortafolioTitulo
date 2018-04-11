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
public class Factura 
{
    private int factura;
    private int idcliente;
    private int idordenCompra;
    private int idServicioComedor;
    private int numeroFactura;
    private int totalPagoFatura;
    private String codEmpresa;

    public Factura() {
    }

    public Factura(int factura, int idcliente, int idordenCompra, int idServicioComedor, int numeroFactura, int totalPagoFatura, String codEmpresa) {
        this.factura = factura;
        this.idcliente = idcliente;
        this.idordenCompra = idordenCompra;
        this.idServicioComedor = idServicioComedor;
        this.numeroFactura = numeroFactura;
        this.totalPagoFatura = totalPagoFatura;
        this.codEmpresa = codEmpresa;
    }

    public int getFactura() {
        return factura;
    }

    public void setFactura(int factura) {
        this.factura = factura;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getIdordenCompra() {
        return idordenCompra;
    }

    public void setIdordenCompra(int idordenCompra) {
        this.idordenCompra = idordenCompra;
    }

    public int getIdServicioComedor() {
        return idServicioComedor;
    }

    public void setIdServicioComedor(int idServicioComedor) {
        this.idServicioComedor = idServicioComedor;
    }

    public int getNumeroFactura() {
        return numeroFactura;
    }

    public void setNumeroFactura(int numeroFactura) {
        this.numeroFactura = numeroFactura;
    }

    public int getTotalPagoFatura() {
        return totalPagoFatura;
    }

    public void setTotalPagoFatura(int totalPagoFatura) {
        this.totalPagoFatura = totalPagoFatura;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
    
    
}
