/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controladores.ControladorHabitaciones;
import Modelo.Habitacion;
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
@WebServlet(name = "HabitacionesServlet", urlPatterns = {"/HabitacionesServlet"})
public class HabitacionesServlet extends HttpServlet {

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
      
            
            String  Elimnando= request.getParameter("EliminarH");
            String agregar=request.getParameter("AgregarHabitacion");
            String modificar=request.getParameter("ModificarHabitacion");
            
            if (Elimnando!=null) 
            {
                try {
                    int  idAeliminar=Integer.parseInt(request.getParameter("idHabitacion"));
                    EliminarHabitaciones(idAeliminar);
                    
                    //mensaje sactifactorio
                    response.sendRedirect("./habitaciones.jsp");
                      request.getSession().setAttribute("mensaje","Eliminada con exito.");
                } catch (Exception e) 
                {
                    //Error
                      response.sendRedirect("./habitaciones.jsp");
                      request.getSession().setAttribute("mensajeError","Error de servidor.");
                }
            }
            else if (agregar!=null) 
            {
                try {
                    String tipoH=request.getParameter("Thabiracion");
                    int precio=Integer.parseInt(request.getParameter("PrecioH"));
                    String estado=request.getParameter("estadoH");
                    int numerHabi=Integer.parseInt(request.getParameter("NumeroH"));
                    int pisoHabi=Integer.parseInt(request.getParameter("pisoH"));
                    String codEmrepsa=request.getParameter("AcodEmpresa");

                    AgregarHabitacion(tipoH, precio, estado, numerHabi, pisoHabi, codEmrepsa);

                    //mensaje exitoso.
                    response.sendRedirect("./habitaciones.jsp");
                request.getSession().setAttribute("mensaje","Habitacion agregada con exito.");
                } catch (Exception e) {
                    //mensaje error
                response.sendRedirect("./habitaciones.jsp");
                request.getSession().setAttribute("mensajeError","Variable Vacia");
                }
                
                
            }
            else if (modificar!=null) 
            {
                try {
                    int id=Integer.parseInt(request.getParameter(""));
                    String tipo=request.getParameter("");
                    int precio=Integer.parseInt(request.getParameter(""));
                    int numero=Integer.parseInt(request.getParameter(""));
                    int piso=Integer.parseInt(request.getParameter(""));
                    
                    ModificarHabitacion(id, tipo, precio, numero, piso);
                     response.sendRedirect("./habitaciones.jsp");
                     request.getSession().setAttribute("mensaje","Modificado Correctamente");
                    
                } catch (Exception e)
                {
                    response.sendRedirect("./habitaciones.jsp");
                    request.getSession().setAttribute("mensajeError","Error al modificar.");
                }
            }
            else{
                response.sendRedirect("./habitaciones.jsp");
                request.getSession().setAttribute("mensajeError","Variable Vacia");
            }
            
            
        
    }
    
    public void EliminarHabitaciones(int idAEliminar)
    {
            Habitacion h= new Habitacion();
            h.setIdHabitacion(idAEliminar);
            ControladorHabitaciones ctrh= new ControladorHabitaciones();
            ctrh.EliminarHabitacion(h);
    }
    
    public void AgregarHabitacion(String thabitacion,int precio,String estado,int numeroH, int pisoH,String CodEmre)
    {
        Habitacion h= new Habitacion();
        h.setTipohabitacion(thabitacion);
        h.setPrecio(precio);
        h.setEstado(estado);
        h.setNumHabitacion(numeroH);
        h.setPsoHabitacion(pisoH);
        h.setCodEmpresa(CodEmre);
        ControladorHabitaciones ctrH= new ControladorHabitaciones();
        ctrH.AgregarHabitacion(h);
        
        
    } 
    
    public void ModificarHabitacion(int id,String tipo,int precio,int numero,int piso)
    {
        Habitacion h= new Habitacion();
        h.setIdHabitacion(id);
        h.setTipohabitacion(tipo);
        h.setPrecio(precio);
        h.setNumHabitacion(numero);
        h.setPsoHabitacion(piso);
        ControladorHabitaciones ctrH= new ControladorHabitaciones();
        ctrH.ModificarHabitaciones(h);
        
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
