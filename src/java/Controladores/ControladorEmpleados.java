    
package Controladores;

import Conexion.ConexionBD;
import Modelo.EmpleadosDC;
import java.sql.Connection;
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
}
