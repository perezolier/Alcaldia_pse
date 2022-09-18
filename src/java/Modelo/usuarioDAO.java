/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;
//Librerias

import java.util.LinkedList;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;

/**
 *
 * @author JAPO
 */
public class usuarioDAO {

//DEFINIMOS LOS ATRIBUTOS
//LinkedList para guardar el listado de pacientes
    private static LinkedList<usuarioVO> listausuario;
    private static Connection con;
    private usuarioVO UsuarioVO;

//Definimos el constructor
    public usuarioDAO() {
        Recursos.Conexion conexion = new Recursos.Conexion("localhost", "alcaldia_unguia", "japo", "12345");
        con = conexion.getConexion();
    }

    public Modelo.usuarioVO findByPrimaryKey(int Id_Usu) {
        usuarioVO UsuarioVO = new usuarioVO();
        String sql = "select * from usuario where Id_Usu = Id_Usu";

        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                UsuarioVO.setId_Usu(rs.getInt(Id_Usu));
                UsuarioVO.setUsu_Cedula(rs.getString("Usu_Cedula"));
                UsuarioVO.setUsu_nombre(rs.getString("Usu_nombre"));
                UsuarioVO.setUsu_Apellido(rs.getString("Usu_Apellido"));
                UsuarioVO.setUsu_Celular(rs.getString("Usu_Celular"));
                UsuarioVO.setUsu_Correo(rs.getString("Usu_Correo"));
                UsuarioVO.setUsu_Direccion(rs.getString("Usu_Direccion"));
                UsuarioVO.setUsu_contrasena(rs.getString("Usu_Contrasena"));
            }
            st.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
        return UsuarioVO;

    }

    public List<usuarioVO> findByParametroValor(int parametro, String valor) {
        usuarioVO UsuarioVO = new usuarioVO();
        List<usuarioVO> listaUsuarios = new ArrayList<>();
        String sql = "";
        switch (parametro) {
            case 1:
                sql = "select * from usuario where Usu_Cedula = '" + valor + "'";
                break;
            case 2:
                sql = "select * from usuario where Id_Usu=" +valor;
                break;
        }
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                listaUsuarios.add(new usuarioVO(rs.getInt("Usu_Cedula"), rs.getString("Id_Usu"), rs.getString("Usu_Nombre"), rs.getString("Usu_Apellido"),
                        rs.getString("Usu_Celular"), rs.getString("Usu_Correo"), rs.getString("Usu_Direccion"), rs.getString("Usu_Contrasena")));
            }
            st.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
        return listaUsuarios;

    }

    public String registrarusuario(usuarioVO UsuarioVO) {
        PreparedStatement pst;
        String mensaje = "";
        try {
            pst = con.prepareStatement("insert into usuario values(?,?,?,?,?,?,?,?)");
            pst.setInt(1, UsuarioVO.getId_Usu());
            pst.setString(2, UsuarioVO.getUsu_Cedula());
            pst.setString(3, UsuarioVO.getUsu_nombre());
            pst.setString(4, UsuarioVO.getUsu_Apellido());
            pst.setString(5, UsuarioVO.getUsu_Celular());
            pst.setString(6, UsuarioVO.getUsu_Correo());
            pst.setString(7, UsuarioVO.getUsu_Direccion());
            pst.setString(8, UsuarioVO.getUsu_contrasena());
            pst.executeUpdate();
            mensaje = ("Usuario Registrado");
        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            mensaje = "No Se Registro El Usuario";
        }
        return mensaje;
    }
}
