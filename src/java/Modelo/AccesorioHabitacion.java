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
public class AccesorioHabitacion 
{
    private int accesorioHabitacional;
    private String nombre;
    private int cantidad;
    private int idhabitacional;
    private String codEmpresa;

    public AccesorioHabitacion() {
    }

    public AccesorioHabitacion(int accesorioHabitacional, String nombre, int cantidad, int idhabitacional, String codEmpresa) {
        this.accesorioHabitacional = accesorioHabitacional;
        this.nombre = nombre;
        this.cantidad = cantidad;
        this.idhabitacional = idhabitacional;
        this.codEmpresa = codEmpresa;
    }

    public int getAccesorioHabitacional() {
        return accesorioHabitacional;
    }

    public void setAccesorioHabitacional(int accesorioHabitacional) {
        this.accesorioHabitacional = accesorioHabitacional;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getIdhabitacional() {
        return idhabitacional;
    }

    public void setIdhabitacional(int idhabitacional) {
        this.idhabitacional = idhabitacional;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
    
    
    
}
