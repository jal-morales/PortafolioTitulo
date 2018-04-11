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
public class Cliente 
{
    private int idCliente;
    private String nombrEmpresa;
    private String rutEmpresa;
    private String telefono;
    private String direccion;
    private String giroEmpresa;
    private String usuario;
    private String passWord;
    private String codEmpresa;

    public Cliente() {
    }

    public Cliente(int idCliente, String nombrEmpresa, String rutEmpresa, String telefono, String direccion, String giroEmpresa, String usuario, String passWord, String codEmpresa) {
        this.idCliente = idCliente;
        this.nombrEmpresa = nombrEmpresa;
        this.rutEmpresa = rutEmpresa;
        this.telefono = telefono;
        this.direccion = direccion;
        this.giroEmpresa = giroEmpresa;
        this.usuario = usuario;
        this.passWord = passWord;
        this.codEmpresa = codEmpresa;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombrEmpresa() {
        return nombrEmpresa;
    }

    public void setNombrEmpresa(String nombrEmpresa) {
        this.nombrEmpresa = nombrEmpresa;
    }

    public String getRutEmpresa() {
        return rutEmpresa;
    }

    public void setRutEmpresa(String rutEmpresa) {
        this.rutEmpresa = rutEmpresa;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getGiroEmpresa() {
        return giroEmpresa;
    }

    public void setGiroEmpresa(String giroEmpresa) {
        this.giroEmpresa = giroEmpresa;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
    
    
    
}
