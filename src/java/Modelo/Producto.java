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
public class Producto 
{
    private int idproducto;
    private String codProduto;
    private String nombre;
    private int precio;
    private int stock_Critico;
    private int stock_producto;
    private String fechaVencimiento;
    private int idCategoria;
    private String codEmpresa;

    public Producto() {
    }

    public Producto(int idproducto, String codProduto, String nombre, int precio, int stock_Critico, int stock_producto, String fechaVencimiento, int idCategoria, String codEmpresa) {
        this.idproducto = idproducto;
        this.codProduto = codProduto;
        this.nombre = nombre;
        this.precio = precio;
        this.stock_Critico = stock_Critico;
        this.stock_producto = stock_producto;
        this.fechaVencimiento = fechaVencimiento;
        this.idCategoria = idCategoria;
        this.codEmpresa = codEmpresa;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getCodProduto() {
        return codProduto;
    }

    public void setCodProduto(String codProduto) {
        this.codProduto = codProduto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getStock_Critico() {
        return stock_Critico;
    }

    public void setStock_Critico(int stock_Critico) {
        this.stock_Critico = stock_Critico;
    }

    public int getStock_producto() {
        return stock_producto;
    }

    public void setStock_producto(int stock_producto) {
        this.stock_producto = stock_producto;
    }

    public String getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(String fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getCodEmpresa() {
        return codEmpresa;
    }

    public void setCodEmpresa(String codEmpresa) {
        this.codEmpresa = codEmpresa;
    }
    
    
    
    
}
