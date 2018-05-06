    
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
    
    
           //metodo que lista los empleados pero por empresa por lo que solicito el codigo empresa para difirenciar 
    //cual data debo mostrar.
                 public ArrayList<EmpleadosDC> EmpleadosListar(int codEmpresa)
    { 
        ArrayList<EmpleadosDC> Empleados_lista=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select idempresados, nombres,apellidos,rut,cargo from empleados  where empresa_idempresa="+codEmpresa+""; 
            
            
            ResultSet rs =stms.executeQuery(consulta);
             conn.getConnection().close();
            while (rs.next())
            {                
                    EmpleadosDC empl= new EmpleadosDC();

                 empl.setIdEmpleadosDC(Integer.parseInt(rs.getString("idempresado")));
                  
                  empl.setNombres((rs.getString("nombres")));
                  empl.setApellidos((rs.getString("apellidos")));
                  empl.setRut(rs.getString("rut"));
                  empl.setCargo(rs.getString("cargo"));
                  empl.setCodEmpresa(Integer.parseInt(rs.getString("empresa")));
                  
            }
             return Empleados_lista;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();

    }  
                
        //Agregar Empleados. Listo testiado.        
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
                              System.out.println("Exito en el ingreso de empleados");
                             
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
                 
  /*               
   public static void main(String [] arg)
      {
          
          try {
              ControladorEmpleados cl= new ControladorEmpleados();
          EmpleadosDC e= new EmpleadosDC();
          e.setNombres("Juaquin Daniel");
          e.setApellidos("Aranda Riquelme");
          e.setRut("77777777-7");
          e.setCargo("Adminsitrador");
          e.setUsuario("Jaranda");
          e.setPassword("77777777-7");
          e.setCodEmpresa(1);
          cl.AgregarEmplados(e);
              System.out.println("Ingresado con exito");
          } catch (Exception e) 
          {
              e.printStackTrace();
              System.out.println("Error no se pudo insertar");
          }    
      }   */            
                 
}
