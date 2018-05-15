/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Conexion.ConexionBD;
import Modelo.Proveedores;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author JavierL.M
 */
public class ControladorProveedores 

{
     public ArrayList<Proveedores> ProveedoresListar(int codEmpresa)
    { 
        ArrayList<Proveedores> Provedores_lista=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select IDPROVEEDORES, NOMBRE_PROVEEDOR,RUT_PROVEEDOR,DIRECCION_PROVEEDOR,NUMERO_TELEFONICO,CORREO,RUBRO from PROVEEDORES  where EMPRESA_IDEMPRESA="+codEmpresa+""; 

            
            ResultSet rs =stms.executeQuery(consulta);          
            while (rs.next())
            {                
                    Proveedores prov= new Proveedores();

                 prov.setIdProveedores(Integer.parseInt(rs.getString("IDPROVEEDORES")));
                  
                  prov.setNombre((rs.getString("NOMBRE_PROVEEDOR")));
                   prov.setRut((rs.getString("RUT_PROVEEDOR")));
                  prov.setDireccion(rs.getString("DIRECCION_PROVEEDOR"));
                  prov.setNumeroTelefonico(rs.getString("NUMERO_TELEFONICO"));
                  prov.setCorreo(rs.getString("CORREO"));
                  prov.setRubro(rs.getString("RUBRO"));
                  Provedores_lista.add(prov);
            }
             return Provedores_lista;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();

    } 
     
     /*public static void main(String [] arg)
      {
          ControladorProveedores ctE= new ControladorProveedores();
          System.out.println(ctE.ProveedoresListar(1));
         // System.out.println(cl.Login(1,"jlopez","17336928-k"));
      }*/
}
