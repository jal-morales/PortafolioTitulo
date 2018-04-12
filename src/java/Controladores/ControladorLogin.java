/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Conexion.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author JavierL.M
 */
public class ControladorLogin 
{
  
    //login a usuario
      public boolean Login()
  { boolean respuesta =false;
      try {
           
                 //llamamos a la conexion 
            ConexionBD con = new ConexionBD();
            //llamamos a la clase conect           
                 Connection  conetar=con.getConnection();
                 
               
             String consulta  = "select * from empresa;";   
             System.out.println(consulta);
             PreparedStatement stms= conetar.prepareStatement(consulta);      
             
             ResultSet rs =stms.executeQuery(consulta); 
             if (rs.absolute(1)) 
             {
                   respuesta=true;
                 return respuesta; 
             }
             else 
             {
                   return false;
             }

      } catch (Exception e) 
      {
            System.out.println("Revisar aca Controlador User");
        e.printStackTrace();
      }
      return respuesta;
      
  }
      
      public static void main(String [] arg)
      {
          ControladorLogin cl= new ControladorLogin();
          System.out.println(cl.Login());
             
      }
    
}
