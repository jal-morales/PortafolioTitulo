/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controladores.ControladorLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author JavierL.M
 */
@WebServlet(name = "UsserServlet", urlPatterns = {"/UsserServlet"})
public class UsserServlet extends HttpServlet {

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
            String btnLogin=request.getParameter("btnLogin");
        // aremodificacion para ver notificaciongit 
            if (btnLogin!=null) 
            {
                int codEmpresa=Integer.parseInt(request.getParameter("txtCodEmpresa"));
                String  userr=request.getParameter("txtUsuario");
                String pass= request.getParameter("txtpassword");
                
                if (codEmpresa!=0 && userr!=null && pass!=null ) 
                {
                    if (validar(codEmpresa, userr, pass)==true) 
                    {
                        //el dato existe crearemos una session para poder manipular para los filtros por empresa;
                               HttpSession sessionCodEmpresa = request.getSession(true);                            
                               sessionCodEmpresa.setAttribute("txtCodEmpresa", request.getParameter("txtCodEmpresa"));
                               
                        //session de bienvenida para correo.
                        HttpSession sessionUsser = request.getSession(true);                            
                        sessionUsser.setAttribute("txtUsuario", request.getParameter("txtUsuario"));
                               
                        //sessionCodEmpresa.setMaxInactiveInterval(3600); este paramero sirve en caso que necesitemos dar tiempo a la session.
                               
                       //redireccionaremos al inicio.jsp
                       response.sendRedirect("./home.jsp"); 
                    }
                    else
                    {
                        //retornar al index ya que no existe en base de datos
                        response.sendRedirect("./login.jsp");
                        //falta enviar aviso al usuario de que no pudo acceder .

                    }
                    
                  
                }
            }
        

        }
    }
    //se valida el usuario en login 
    public boolean validar( int  codEmpresa,String usser, String pass)
    {
     ControladorLogin ctrl= new ControladorLogin();
     
     return ctrl.Login(codEmpresa, usser, pass);
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
