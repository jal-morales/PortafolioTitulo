/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import oracle.jdbc.OracleDriver;

/**
 *
 * @author JavierL.M
 */
public class ConexionBD 
{

    
    //METODO QUE REALIZA LA CONEXION
    public Connection getConnection() throws SQLException, 
            ClassNotFoundException 
    {
        
        DriverManager.registerDriver(new OracleDriver());
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","DONACLARITA","system");
        System.out.println("¡Conexión Exitosa!");
        return conn;
    }

}
