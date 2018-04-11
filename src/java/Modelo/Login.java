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
public class Login 
{
    private int idLogin;
    private String nombre;
    private String usuaroio;
    private String password;
    private String tipo_usuario;

    public Login() {
    }

    public Login(int idLogin, String nombre, String usuaroio, String password, String tipo_usuario) {
        this.idLogin = idLogin;
        this.nombre = nombre;
        this.usuaroio = usuaroio;
        this.password = password;
        this.tipo_usuario = tipo_usuario;
    }

    public int getIdLogin() {
        return idLogin;
    }

    public void setIdLogin(int idLogin) {
        this.idLogin = idLogin;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuaroio() {
        return usuaroio;
    }

    public void setUsuaroio(String usuaroio) {
        this.usuaroio = usuaroio;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(String tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }
    
    
    
}
