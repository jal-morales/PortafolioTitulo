/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Conexion.ConexionBD;
import Modelo.AccesorioHabitacion;
import Modelo.Habitacion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author JavierL.M
 */
public class ControladorHabitaciones 
{
    //metodo que lista los empleados pero por empresa por lo que solicito el codigo empresa para difirenciar cual data debo mostrar.

                 public ArrayList<Habitacion> HabitacionListar(int codEmpresa)
    { 
        ArrayList<Habitacion> Habitacion_lista=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select idhabitacion,tipo_habitacion,precio,estado,numero_habitacion,piso_habitacion from habitacion  where estado='Disponible' and empresa_idempresa="+codEmpresa+""; 
            
            
            ResultSet rs =stms.executeQuery(consulta);          
            while (rs.next())
            {                
                    Habitacion ha= new Habitacion();
                    
                    
                 ha.setIdHabitacion(Integer.parseInt(rs.getString("idhabitacion")));
                  
                  ha.setTipohabitacion(rs.getString("tipo_habitacion"));
                  ha.setPrecio(Integer.parseInt(rs.getString("precio")));
                  ha.setEstado(rs.getString("estado"));
                  ha.setNumHabitacion(Integer.parseInt(rs.getString("numero_habitacion")));
                  ha.setPsoHabitacion(Integer.parseInt(rs.getString("piso_habitacion")));
                 
                  Habitacion_lista.add(ha);
            }
             return Habitacion_lista;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();

    }  
                 
                 
                 //detalle de accesorios de habitaciones
            public ArrayList<AccesorioHabitacion> AccesoriosListar(int idhabitacion)
    { 
        ArrayList<AccesorioHabitacion> AccesoriosListar=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select NOMBRE_ACCESORIO,CANTIDAD,IDHABITACION from ACCESORIOS_HABITACIONES  where IDHABITACION="+idhabitacion+""; 
            
            
            ResultSet rs =stms.executeQuery(consulta);          
            while (rs.next())
            {                
                    AccesorioHabitacion ah= new AccesorioHabitacion();
                  ah.setNombre(rs.getString("NOMBRE_ACCESORIO"));
                  ah.setCantidad(Integer.parseInt(rs.getString("CANTIDAD")));
                  ah.setIdhabitacional(Integer.parseInt(rs.getString("IDHABITACION")));
                 
                  AccesoriosListar.add(ah);
            }
             return AccesoriosListar;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();

    }  
            
            //Agregar Habitaciones
            //Eliminar habitaciones
            
            public  void EliminarHabitacion(Habitacion Eliminarhabitacion)
      {
            try {
                  ConexionBD con = new ConexionBD();
                  Connection conectar= con.getConnection();
         
                  String consulta="DELETE  FROM habitacion WHERE IDHABITACION="+Eliminarhabitacion.getIdHabitacion()+"";
                  System.out.println(consulta);

                    PreparedStatement stms= conectar.prepareStatement(consulta);
                
                   //llamamos al Statement que ejecutas sentencias Sql
                        if (stms!=null ) 
                        {
                           stms.executeUpdate(consulta);
                              System.out.println("eliminada con exito");
                               
                               stms.close();
                        }
                        else 
                        {
                            System.out.println("Query no ejecutada");
                        }
     
            } catch (Exception e) 
            {
                  System.out.println("Revisar try Elminacion de habitaciones.");
                 e.printStackTrace();
            }
     
      } 
            
            
        //Agregar Clientes
    public void AgregarHabitacion(Habitacion Nhabitacion)
        {
            try {
                ConexionBD conn = new ConexionBD();
             Connection conexion = conn.getConnection();
             
         
                  String consulta="INSERT INTO HABITACION VALUES(CNTEO.nextval,'"+Nhabitacion.getTipohabitacion()+"',"+ Nhabitacion.getPrecio()+",'"+Nhabitacion.getEstado()+"',"+ Nhabitacion.getNumHabitacion()+","+Nhabitacion.getPsoHabitacion()+",'"+Nhabitacion.getCodEmpresa()+"')";
                 System.out.println(consulta); 
                   PreparedStatement stms= conexion.prepareStatement(consulta);
                
                   //llamamos al Statement que ejecutas sentencias Sql
                        if (stms!=null ) 
                        {
                           stms.executeUpdate(consulta);
  
                        }
                        else 
                        {
                            System.out.println("Query no ejecutada");
                        }
     
            } catch (Exception e) 
            {
                  System.out.println("Revisar try Agregar Habitaciones");
                 e.printStackTrace();
            }
            
            
            
   
            
           
        }         
             
    
}
