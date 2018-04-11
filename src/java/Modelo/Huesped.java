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
public class Huesped 
{
    private int idHuesped;
    private int idCliente;
    private String nombreHuesped;
    private String apellidosHuesped;
    private String codEmpresa;

    public Huesped() {
    }

    public Huesped(int idHuesped, int idCliente, String nombreHuesped, String apellidosHuesped, String codEmpresa) {
        this.idHuesped = idHuesped;
        this.idCliente = idCliente;
        this.nombreHuesped = nombreHuesped;
        this.apellidosHuesped = apellidosHuesped;
        this.codEmpresa = codEmpresa;
    }

    public int getIdHuesped() {
        return idHuesped;
    }

    public void setIdHuesped(int idHuesped) {
        this.idHuesped = idHuesped;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombreHuesped() {
        return nombreHuesped;
    }

    public void setNombreHuesped(String nombreHuesped) {
        this.nombreHuesped = nombreHuesped;
    }

    public String getApellidosHuesped() {
        return apellidosHuesped;
    }

    public void setApellidosHuesped(String apellidosHuesped) {
        this.apellidosHuesped = apellidosHuesped;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
    
    
}
