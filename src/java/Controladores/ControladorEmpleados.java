    
package Controladores;

import Conexion.ConexionBD;
import Modelo.EmpleadosDC;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author JavierL.M
 */
public class ControladorEmpleados

{
     
    
           //metodo que lista los empleados pero por empresa por lo que solicito el codigo empresa para difirenciar cual data debo mostrar.

                 public ArrayList<EmpleadosDC> EmpleadosListar(int codEmpresa)
    { 
        ArrayList<EmpleadosDC> Empleados_lista=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select idempresados, nombres,apellidos,rut,cargo,usuario,EMPRESA_IDEMPRESA from empleados  where empresa_idempresa="+codEmpresa+""; 
            
            
            ResultSet rs =stms.executeQuery(consulta);          
            while (rs.next())
            {                
                    EmpleadosDC empl= new EmpleadosDC();

                 empl.setIdEmpleadosDC(Integer.parseInt(rs.getString("idempresados")));
                  
                  empl.setNombres((rs.getString("nombres")));
                  empl.setApellidos((rs.getString("apellidos")));
                  empl.setRut(rs.getString("rut"));
                  empl.setCargo(rs.getString("cargo"));
                  empl.setUsuario(rs.getString("usuario"));
                  empl.setCodEmpresa(Integer.parseInt(rs.getString("EMPRESA_IDEMPRESA")));
                  Empleados_lista.add(empl);
            }
             return Empleados_lista;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();

    }  
                
        //Agregar Empleados. Listo testiado. 100% funcionando.       
                 public void AgregarEmplados(EmpleadosDC nEmpleados)
        {
            try {
                ConexionBD conn = new ConexionBD();
             Connection conexion = conn.getConnection();
             
         
                  String consulta="INSERT INTO EMPLEADOS VALUES(CNTEO.nextval,'"+nEmpleados.getNombres()+"','"+ nEmpleados.getApellidos()+"','"+nEmpleados.getRut()+"','"+nEmpleados.getCargo()+"','"+nEmpleados.getUsuario()+"','"+nEmpleados.getPassword()+"',"+nEmpleados.getCodEmpresa()+")";
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
                  System.out.println("Revisar try Empleados");
                 e.printStackTrace();
            }
            
           
        }
                 
     //modificar Empleados. Listo testiado. 100% funcionando.
      public  void ModificarEmpleados(EmpleadosDC ActualiZarEmpleados)
      {
            try {
                  ConexionBD conn = new ConexionBD();
                Connection conexion = conn.getConnection();
         
                  String consulta="UPDATE EMPLEADOS SET NOMBRES='"+ActualiZarEmpleados.getNombres()+"',APELLIDOS='"+ActualiZarEmpleados.getApellidos()+"',RUT='"+ActualiZarEmpleados.getRut()+"',CARGO='"+ActualiZarEmpleados.getCargo()+"' where IDEMPRESADOS="+ActualiZarEmpleados.getIdEmpleadosDC()+"";
                  System.out.println(consulta);
                   PreparedStatement stms= conexion.prepareStatement(consulta);
                   
                
                   //llamamos al Statement que ejecutas sentencias Sql
                        if (stms!=null ) 
                        {
                            try {
                                 stms.executeUpdate(consulta);
                                 
                            } catch (Exception e) 
                            {
                                e.printStackTrace();
                            }
                          
    
                        }
                        else 
                        {
                            System.out.println("No se actualio El empleado.");
                        }
     
            } catch (Exception e) 
            {
                 e.printStackTrace();
            }
      }
      
      //Metodo validador de empledos.
      //determina si exite o no el rut que ingresemos.
      
      
      public boolean ValidarExistenciaEmpleados ( String rut, int codEmpresa )
      {
           boolean respuesta =false;
      try {          
                 //llamamos a la conexion 
            ConexionBD con = new ConexionBD();
            //llamamos a la clase conect           
                 Connection  conetar=con.getConnection();
                  String consulta  = "select * from EMPLEADOS where RUT='"+rut+"' and EMPRESA_IDEMPRESA="+codEmpresa+""; 
                  
             PreparedStatement stms= conetar.prepareStatement(consulta);      
           
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
         System.out.println("Revisar Validacion de Empleados.");
        e.printStackTrace();
      }
      return respuesta;
  
    } 
      
      
      //eliminar Empleados.Listo testiado. 100% funcionando.
      public  void EliminarEmpleados(EmpleadosDC EliminarEmpleados)
      {
            try {
                  ConexionBD con = new ConexionBD();
                  Connection conectar= con.getConnection();
         
                  String consulta="DELETE  FROM EMPLEADOS WHERE IDEMPRESADOS="+EliminarEmpleados.getIdEmpleadosDC()+"";
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
                  System.out.println("Revisar try Elminacion de empleados.");
                 e.printStackTrace();
            }
            
       
      } 
      
}
                 
             
   
 
