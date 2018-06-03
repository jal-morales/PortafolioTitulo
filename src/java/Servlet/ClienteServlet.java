/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controladores.ControladorCliente;
import Modelo.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JavierL.M
 */
@WebServlet(name = "ClienteServlet", urlPatterns = {"/ClienteServlet"})
public class ClienteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         
            String agregarCliente=request.getParameter("AgregarClientes");
            String eliminarCliente= request.getParameter("EliminarC");
            String ModificarCliente=request.getParameter("modCliente");
            
            if (agregarCliente!=null) 
            {
              String nombreEmp=request.getParameter("ANombreEmpresa");
              String rutEmpresa=request.getParameter("ArutEmpresa");  
              String telefono=request.getParameter("ATelefono");  
              String direccion=request.getParameter("ADirecicion");
              String giro=request.getParameter("AGiro");
              String user=request.getParameter("Ausuario");
              int codEmpresa=Integer.parseInt(request.getParameter("AcodEmpresa"));
              String cargo="Cliente";
              
                
                try {
                    AgregarCliente(nombreEmp, rutEmpresa, telefono, direccion, giro, user, rutEmpresa, codEmpresa,cargo);
                    //mesane satifactorio.
                     response.sendRedirect("./clientes.jsp");
                    request.getSession().setAttribute("mensaje","Ingreso satifactorio");
                } catch (Exception e) 
                {
                    //mensaje error.
                    response.sendRedirect("./clientes.jsp");
                   request.getSession().setAttribute("mensajeError","Error, nose pudo insertar");
                }
                
            }
            
           if (eliminarCliente!=null) 
            {
             int  id= Integer.parseInt(request.getParameter("idEeliminarC"));

                try {
                    Eliminar(id);
                    //mensaje satifactorio
                    response.sendRedirect("./clientes.jsp");
                   request.getSession().setAttribute("mensaje","Eliminado con exito");
                } catch (Exception e) 
                {
                    //mesaje error
                    response.sendRedirect("./clientes.jsp");
                   request.getSession().setAttribute("mensajeError","Error, nose pudo Elimianr");
                }
            }
           
            if (ModificarCliente!=null) 
            {
                String nombre=request.getParameter("ModNombreEmpresa");
                String rut=request.getParameter("ModrutEmpresa");
                String tel=request.getParameter("ModTelefono");
                String direcc=request.getParameter("ModDirecicion");
                String gir=request.getParameter("ModGiro");
                int id=Integer.parseInt(request.getParameter("idcliente"));
                
                    try {
                        
                        ModificarCliente(nombre, rut, tel, direcc, gir, id);
                    // modificacion satifactoria
                    response.sendRedirect("./clientes.jsp");
                   request.getSession().setAttribute("mensaje","Registro modificado.");
                } catch (Exception e) 
                {
                    //modificacion Errada.
                    response.sendRedirect("./clientes.jsp");
                   request.getSession().setAttribute("mensajeError","Error, nose pudo Modificar");
                }
            }
            
            
            
            
            
            
        }
    }
    
    public void AgregarCliente(String nombre, String rut,String telefo,String direcc,String giroEmp,String usser,String pass,int codE,String cargo)
    {
        ControladorCliente ctrcl= new ControladorCliente();
        Cliente c= new Cliente();
        c.setNombrEmpresa(nombre);
        c.setRutEmpresa(rut);
        c.setTelefono(telefo);
        c.setDireccion(direcc);
        c.setGiroEmpresa(giroEmp);
        c.setUsuario(usser);
        c.setPassWord(pass);
        c.setCodEmpresa(codE);
        c.setTipoCargo(cargo);
        ctrcl.AgregarClientes(c);
    }
    
    public void Eliminar(int id)
    {
        ControladorCliente ctrC= new ControladorCliente();
        Cliente c= new Cliente();
        c.setIdCliente(id);
        ctrC.EliminarCliente(c);
    }
    
    public void ModificarCliente(String nobre,String rut,String teld,String direcc,String giro,int id)
    {
        ControladorCliente ctrC= new ControladorCliente();
        Cliente c= new Cliente();
        c.setNombrEmpresa(nobre);
        c.setRutEmpresa(rut);
        c.setTelefono(teld);
        c.setDireccion(direcc);
        c.setGiroEmpresa(giro);
        c.setIdCliente(id);
        
        ctrC.ModificarClientes(c);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
