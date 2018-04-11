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
public class EmpleadosDC 
{
    private int idEmpleadosDC;
    private String nombres;
    private String apellidos;
    private String rut;
    private String cargo;
    private String usuario;
    private String password;

    public EmpleadosDC(int idEmpleadosDC, String nombres, String apellidos, String rut, String cargo, String usuario, String password) {
        this.idEmpleadosDC = idEmpleadosDC;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.rut = rut;
        this.cargo = cargo;
        this.usuario = usuario;
        this.password = password;
    }

    public EmpleadosDC() {
    }

    public int getIdEmpleadosDC() {
        return idEmpleadosDC;
    }

    public void setIdEmpleadosDC(int idEmpleadosDC) {
        this.idEmpleadosDC = idEmpleadosDC;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}
