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
public class Proveedores 
{
    private int idProveedores;
    private String nombre;
    private String rut;
    private String direccion;
    private int numeroTelefonico;
    private String correo;
    private String rubro;

    public Proveedores() {
    }

    public Proveedores(int idProveedores, String nombre, String rut, String direccion, int numeroTelefonico, String correo, String rubro) {
        this.idProveedores = idProveedores;
        this.nombre = nombre;
        this.rut = rut;
        this.direccion = direccion;
        this.numeroTelefonico = numeroTelefonico;
        this.correo = correo;
        this.rubro = rubro;
    }

    public int getIdProveedores() {
        return idProveedores;
    }

    public void setIdProveedores(int idProveedores) {
        this.idProveedores = idProveedores;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getNumeroTelefonico() {
        return numeroTelefonico;
    }

    public void setNumeroTelefonico(int numeroTelefonico) {
        this.numeroTelefonico = numeroTelefonico;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getRubro() {
        return rubro;
    }

    public void setRubro(String rubro) {
        this.rubro = rubro;
    }
    
    
}
