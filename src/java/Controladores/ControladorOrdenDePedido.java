/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Conexion.ConexionBD;
import Modelo.OrdenDePedido;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author JavierL.M
 */
public class ControladorOrdenDePedido 
{
    
    public ArrayList<OrdenDePedido> ListarOrdenPedido(int codEmpresa ,String rut)
    { 
        ArrayList<OrdenDePedido> ListaPedido=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select p.NOMBRE_PROVEEDOR,p.rut_proveedor,C.FECHA_ORDEN,C.NUMEROORDENPEDIDO,C.USUARIO_ORDEN from PROVEEDORES p inner join ORDE_P C on(p.IDPROVEEDORES=C.PROVEEDORES_IDPROVEEDORES) where p.rut_proveedor='"+rut+"' and  p.EMPRESA_IDEMPRESA="+codEmpresa+"";
            System.out.println(consulta);
            
            ResultSet rs =stms.executeQuery(consulta);          
            while (rs.next())
            {                
                    OrdenDePedido empl= new OrdenDePedido();

                 
                  
                  empl.setNombreProveedor(rs.getString("NOMBRE_PROVEEDOR"));
                  empl.setRutProveedor((rs.getString("rut_proveedor")));
                  empl.setFecha_orden(rs.getString("FECHA_ORDEN"));
                  empl.setNumero_pedido(Integer.parseInt(rs.getString("NUMEROORDENPEDIDO")));
                  empl.setNomUsser(rs.getString("USUARIO_ORDEN"));
                  
                  ListaPedido.add(empl);
            }
             return ListaPedido;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();

    }
}
