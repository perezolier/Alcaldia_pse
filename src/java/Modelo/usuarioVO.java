/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author VICTOR
 */
public class usuarioVO {

    private int Id_Usu;
    private String Usu_Cedula;
    private String Usu_nombre;
    private String Usu_Apellido;
    private String Usu_Celular;
    private String Usu_Correo;
    private String Usu_Direccion;
    private String Usu_Contrasena;

   
    //Contructor con parametros 
    public usuarioVO(int Id_Usu, String Usu_Cedula, String Usu_nombre, String Usu_Apellido, String Usu_Celular, String Usu_Correo, String Usu_Direccion, String Usu_Contrasena) {
        this.Id_Usu = Id_Usu;
        this.Usu_Cedula = Usu_Cedula;
        this.Usu_nombre = Usu_nombre;
        this.Usu_Apellido = Usu_Apellido;
        this.Usu_Celular = Usu_Celular;
        this.Usu_Correo = Usu_Correo;
        this.Usu_Direccion = Usu_Direccion;
        this.Usu_Contrasena = Usu_Contrasena;
    }
    //contructor sin parametros 
    public usuarioVO(){
        this.Id_Usu = 0;
        this.Usu_Cedula = "";
        this.Usu_nombre = "";
        this.Usu_Apellido = "";
        this.Usu_Celular = "";
        this.Usu_Correo = "";
        this.Usu_Direccion = "";
        this.Usu_Contrasena = "";
        
    }
    //definicion de atributos
    public int getId_Usu() {
        return Id_Usu;
    }

    public void setId_Usu(int Id_Usu) {
        this.Id_Usu = Id_Usu;
    }

    public String getUsu_Cedula() {
        return Usu_Cedula;
    }

    public void setUsu_Cedula(String Usu_Cedula) {
        this.Usu_Cedula = Usu_Cedula;
    }

    public String getUsu_nombre() {
        return Usu_nombre;
    }

    public void setUsu_nombre(String Usu_nombre) {
        this.Usu_nombre = Usu_nombre;
    }

    public String getUsu_Apellido() {
        return Usu_Apellido;
    }

    public void setUsu_Apellido(String Usu_Apellido) {
        this.Usu_Apellido = Usu_Apellido;
    }

    public String getUsu_Celular() {
        return Usu_Celular;
    }

    public void setUsu_Celular(String Usu_Celular) {
        this.Usu_Celular = Usu_Celular;
    }
    public String getUsu_Correo(){
        return Usu_Correo;
    }
    
    public void setUsu_Correo(String Usu_Correo) {
        this.Usu_Correo = Usu_Correo;
    }
    
    public String getUsu_Direccion() {
        return Usu_Direccion;
    }

    public void setUsu_Direccion(String Usu_Direccion) {
        this.Usu_Direccion = Usu_Direccion;
    }
     public String getUsu_contrasena() {
        return Usu_Contrasena;
    }

    public void setUsu_contrasena(String Usu_contrasena) {
        this.Usu_Contrasena = Usu_contrasena;
    }

}
