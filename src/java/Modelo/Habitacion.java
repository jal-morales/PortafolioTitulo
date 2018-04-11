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
public class Habitacion 
{
    private int idHabitacion;
    private String tipohabitacion;
    private int precio;
    private int idStatusHabitacion;
    private String estado;
    private int numHabitacion;
    private int psoHabitacion;
    private String codEmpresa;
    

    public Habitacion() {
    }

    public Habitacion(int idHabitacion, String tipohabitacion, int precio, int idStatusHabitacion, String estado, int numHabitacion, int psoHabitacion, String codEmpresa) {
        this.idHabitacion = idHabitacion;
        this.tipohabitacion = tipohabitacion;
        this.precio = precio;
        this.idStatusHabitacion = idStatusHabitacion;
        this.estado = estado;
        this.numHabitacion = numHabitacion;
        this.psoHabitacion = psoHabitacion;
        this.codEmpresa = codEmpresa;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public String getTipohabitacion() {
        return tipohabitacion;
    }

    public void setTipohabitacion(String tipohabitacion) {
        this.tipohabitacion = tipohabitacion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getIdStatusHabitacion() {
        return idStatusHabitacion;
    }

    public void setIdStatusHabitacion(int idStatusHabitacion) {
        this.idStatusHabitacion = idStatusHabitacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getNumHabitacion() {
        return numHabitacion;
    }

    public void setNumHabitacion(int numHabitacion) {
        this.numHabitacion = numHabitacion;
    }

    public int getPsoHabitacion() {
        return psoHabitacion;
    }

    public void setPsoHabitacion(int psoHabitacion) {
        this.psoHabitacion = psoHabitacion;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }

    
    
}
