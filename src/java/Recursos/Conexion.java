/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Recursos;

//Librerias
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;

/**
 *
 * @author VICTOR
 */
public class Conexion {

    //Definimos atributos 
    private String usuario;
    private String clave;
    private String url;
    private String ip;
    private String bd;
    public Connection con;

    //constructor
    public Conexion(String ip, String bd, String usuario, String clave) {
        this.ip = ip; 
        this.bd = bd;
        this.usuario = usuario; 
        this.clave = clave;
        url = "jdbc:mysql://" + ip + ":3306/" +bd; 
        //conectarse con el driver jdbc
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.out.println("Error de conxion a la base de datos");
        }
        //conexión a driver jdbc
        try {
            con = DriverManager.getConnection(url, usuario, clave); 
        } catch (SQLException ex) {
            System.out.println("Error de conexion a la base de datos");
        }
    }

    //Retorna la conexion 
    public Connection getConexion() {
        return con;
    }
//creamos el metodo para cerrar la conexion

    public Connection cerrarConexion() {
        try {
            con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);

        }
        con = null;
        return con;
    }

}
