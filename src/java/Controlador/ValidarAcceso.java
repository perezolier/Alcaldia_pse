/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author JAPO
 */
public class ValidarAcceso extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Modelo.loginDAO LoginDAO = new Modelo.loginDAO();
        boolean resultado = false;
        RequestDispatcher rd = null;
        String usuario = request.getParameter("correo");
        String password = request.getParameter("contrasena");
        resultado = LoginDAO.validarlogin(usuario, password); 

        if (resultado) {
            rd = request.getRequestDispatcher("PaginaPrincipalAdministrador.jsp");
        } else {
            rd = request.getRequestDispatcher("Inicio_sesion/Login.jsp");
            request.setAttribute("mensaje", "Usuario o Contraseña incorrectos");
        }
        rd.forward(request, response);
    }

/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
@Override
        public String getServletInfo(){
    return "Short description";
    }// </editor-fold>
}


