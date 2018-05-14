/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controladores.ControladorEmpleados;
import Modelo.EmpleadosDC;
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
@WebServlet(name = "EmpleadoServlet", urlPatterns = {"/EmpleadoServlet"})
public class EmpleadoServlet extends HttpServlet {

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
           
            //botones de accion
            String modificar= request.getParameter("ModificarEmpleador");
            String eliminar= request.getParameter("EliminarEmpleado");
            String agregar=request.getParameter("");
            
            
            //Controlar caidas del sistema.
            try {
                    if (modificar!=null) 
                    {
                        int idE=Integer.parseInt(request.getParameter("idEmpleado"));
                        String nombreE= request.getParameter("NombreEmpleado");
                        String apellidE=request.getParameter("ApellidosEmpleado");
                        String cargoE=request.getParameter("TipoUsuarioEmpleado");
                        String rutE= request.getParameter("rutEmpleado");
                        
                        
                            ModificarEmpleados(idE, nombreE, apellidE, rutE, cargoE);
                            response.sendRedirect("./usuarios.jsp");
                       
                        
                    }
                    else if (eliminar!=null) 
                    {
                            int idE=Integer.parseInt(request.getParameter("idEeliminar"));
                            
                            
                            EliminarEmpleado(idE);
                            response.sendRedirect("./usuarios.jsp");
                    }
                    
                    

               } catch (Exception e) 
            {
                e.printStackTrace();
            }
            
        }
      
    }

    public void ModificarEmpleados(int id,String nombre,String apellidos, String rut, String cargo)
    {
        ControladorEmpleados ctrEm= new ControladorEmpleados();
        EmpleadosDC e= new EmpleadosDC();
        e.setIdEmpleadosDC(id);
        e.setNombres(nombre);
        e.setApellidos(apellidos);
        e.setRut(rut);
        e.setCargo(cargo);
        
        ctrEm.ModificarEmpleados(e);
    }
    
    public void EliminarEmpleado(int id)
    {
        ControladorEmpleados ctrEm= new ControladorEmpleados();
        EmpleadosDC e= new EmpleadosDC();
        e.setIdEmpleadosDC(id);
        ctrEm.EliminarEmpleados(e);
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
