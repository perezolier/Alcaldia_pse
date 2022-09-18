/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author JAPO
 */
public class ValidarRegistroUsuario extends HttpServlet {

    Modelo.usuarioDAO UsuarioDAO;
    Modelo.usuarioVO UsuarioVO;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String resultado = "";
        RequestDispatcher rd = null;
        String accion = "";
        accion = request.getParameter("opcion");
        if (accion.equals("Registrar")) {
            String Id_Usu = request.getParameter("Id_Usu");
            String Usu_Cedula = request.getParameter("Usu_Cedula");
            String Usu_Nombre = request.getParameter("Usu_Nombre");
            String Usu_Apellido = request.getParameter("Usu_Apellido");
            String Usu_Celular = request.getParameter("Usu_Celular");
            String Usu_Correo = request.getParameter("Usu_Correo");
            String Usu_Direccion = request.getParameter("Usu_Direccion");
            String Usu_Contrasena = request.getParameter("Usu_Contrasena");
            UsuarioDAO = new Modelo.usuarioDAO();
            UsuarioVO = UsuarioDAO.findByPrimaryKey(0);
            if (UsuarioVO.getId_Usu() == 0) {

                UsuarioVO = new Modelo.usuarioVO(0, Usu_Cedula, Usu_Nombre, Usu_Apellido, Usu_Celular, Usu_Correo, Usu_Direccion, Usu_Contrasena);
                resultado = UsuarioDAO.registrarusuario(UsuarioVO);
            } else {
                resultado = "Ya existe un paciente con esa Usuario";
            }
            rd = request.getRequestDispatcher("/Registro_usuario/Registrarse.jsp");
            request.setAttribute("mensaje", resultado);
        }
        if (accion.equals("Consultar")) {
            int opcion = Integer.parseInt(request.getParameter("opcion"));
            String valor = request.getParameter("valor");
            UsuarioDAO = new Modelo.usuarioDAO();
            List<Modelo.usuarioVO> listaUsuarios = UsuarioDAO.findByParametroValor(opcion, valor);
            rd = request.getRequestDispatcher("Consulta/ConsultarUsuarioActivo.jsp");
            request.setAttribute("listaUsuarios", listaUsuarios);

        }
        rd.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
