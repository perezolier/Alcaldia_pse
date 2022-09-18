/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
/** import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException; **/


/**
 *
 * @author VICTOR
 */
public class loginDAO {
    //Definimos los atributos

//Definimos los atributos
//LinkedList para guardar el listado de usuarios
    private static LinkedList<loginVO> listalogin;
    private static Connection con;
    private loginVO LoginVO;

//Definimos el constructor
    public loginDAO() {

        Recursos.Conexion conexion = new Recursos.Conexion("localhost", "alcaldia_unguia", "japo", "12345");
        con = conexion.getConexion();
    }
    //Consultamos si el usuario y el password son correctos 

    public boolean validarlogin(String Usu_Correo, String Usu_Contrasena) {
        boolean encontro = false;
        String sql="";
        sql = "select * from usuario where Usu_Correo='" + Usu_Correo + "' and Usu_Contrasena ='" + Usu_Contrasena + "'";

        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                encontro = true;
            }
            st.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return encontro;

        }
    
}
