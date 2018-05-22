/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Conexion.ConexionBD;
import Modelo.Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author JavierL.M
 */
public class ControladorLogin 
{
  //MAIN PARA PRUEBAS
   
    
    
    
    
    
    
    //Valida si el usuario se encuentra en la base de datos

      public boolean Login(int codEmpresa,String usser,String pass)
  { boolean respuesta =false;
      try {           
                 //llamamos a la conexion 
            ConexionBD con = new ConexionBD();
            //llamamos a la clase conect           
                 Connection  conetar=con.getConnection(); 
                 Statement stms = conetar.createStatement();
             String consulta  = "select * from LOGIN where EMPRESA_IDEMPRESA="+codEmpresa+" and USUARIO='"+usser+"' and PASSWORD='"+pass+"'";   
             System.out.println(consulta);
          
             try {
              //PreparedStatement stms= conetar.prepareStatement(consulta);
              ResultSet rs =stms.executeQuery(consulta); 
             
               if (rs.next()) 
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
              e.printStackTrace();
          }
              
      } catch (Exception e) 
      {
            System.out.println("Revisar aca Controlador User");
            e.printStackTrace();
      }
      return respuesta;     
  }
     
     
      


     public ArrayList<Login>ListaUsuarios(int codempresa) 
    { 
        ArrayList<Login> ListaUsuarios=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select IDLOGIN,NOMBRE,USUARIO,TIPO_USUARIO from LOGIN where EMPRESA_IDEMPRESA="+codempresa+""; 
            
            
            ResultSet rs =stms.executeQuery(consulta);
            
            while (rs.next())
            {                
                Login user =new Login();
                
               
                user.setIdLogin(Integer.parseInt(rs.getString("idlogin")));
                user.setNombre(rs.getString("nombre"));
                user.setUsuaroio(rs.getString("usuario"));
                user.setTipo_usuario(rs.getString("tipo_usuario"));
                
               
                ListaUsuarios.add(user);

            }
             return ListaUsuarios;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();
   
    }
     
     
     
     
     
}
