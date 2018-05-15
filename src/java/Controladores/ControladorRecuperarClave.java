/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Conexion.ConexionBD;
import Modelo.Login;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author JavierL.M
 */
public class ControladorRecuperarClave 
{
    public ArrayList<Login> ListaRecuperarClave(int codEmpresa,String correo)
    { 
        ArrayList<Login> login_lista=new ArrayList<>();
        try
        {
            ConexionBD conn = new ConexionBD();
            Connection conexion = conn.getConnection();
            
            //STATEMENT PERMITE EJECUTAR CONSULTA SQL 
            Statement stms = conexion.createStatement();
            
            String consulta = "select idlogin, nombre,usuario,EMPRESA_IDEMPRESA from empleados  where empresa_idempresa="+codEmpresa+""; 
            
            
            ResultSet rs =stms.executeQuery(consulta);          
            while (rs.next())
            {                
                    Login lg= new Login();

                 
            }
             return login_lista;
        }
        catch(Exception ex)
        {
            
            ex.printStackTrace();
        }
        return new ArrayList<>();

    }  
    
    
    public void CorreRecuperarClave(String codEmpresa,String dirijidoA,String RetiradoPor,String correo)
       {
             try {
                  String host="smtp.gmail.com";
                  String usuario="jal.morales89@gmail.com";
                  String pass="17336928-k";
                  String receptorEmail=correo;
                  String quienEnvioaMail=usuario;
                  String asunto="Entrega de Encomienda";
                  String mensajeDelMail="Estitimado Usuario, le comento que que hemos recidos su solicitud de recuperar clave: Estos son sus credenciales."
                          + "\r\n **********************************************\r\n"
                          + "\r\n Empresa a: "+codEmpresa   +""
                          + "\r\n Usuario a: "+dirijidoA+""
                          + "\r\n Password: "+RetiradoPor+"\r\n\r\n\r\n"
                          + "Sin ningun otro particular  Saludos cordiales.";
                  
                  boolean sessionDebug=false;
                  
                  
                  Properties props=System.getProperties();
                        
                        props.put("mail.smtp.starttls.enable","true");
                        props.put("mail.smtp.host",host);
                        props.put("mail.smtp.port","587");
                        props.put("mail.smtp.auth","true");
                        props.put("mail.smtp.starttis.required","true");
                        
                 java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
                 
                 Session mailSession=Session.getDefaultInstance(props,null);
                 mailSession.setDebug(sessionDebug);
                 
                 Message msg= new MimeMessage(mailSession);
                 msg.setFrom(new InternetAddress(quienEnvioaMail));
                 InternetAddress[] addres={new InternetAddress(receptorEmail)};
                 msg.setRecipients(Message.RecipientType.TO, addres);
                 msg.setSubject(asunto);
                 msg.setSentDate(new Date());
                 msg.setText(mensajeDelMail);
                 
                 Transport transport=mailSession.getTransport("smtp");
                 transport.connect(host,usuario,pass);
                 transport.sendMessage(msg, msg.getAllRecipients());
                 transport.close();
                 System.out.println("eMAIL ENVIADO CON EXITO");

            } catch (Exception e) 
            {
                   System.out.println(e);
            }
                 
       
       }
    
    
}
