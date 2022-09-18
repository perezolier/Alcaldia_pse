/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author VICTOR
 */
public class loginVO {

    //Atributos
    private String Usu_Correo;
    private String Usu_Contrasena;

    //Constructor
    public loginVO(String Usu_Correo, String Usu_Contrasena) {
        this.Usu_Correo = Usu_Correo;
        this.Usu_Contrasena = Usu_Contrasena;
    }

    public loginVO() {
        this.Usu_Correo = "";
        this.Usu_Contrasena = "";

    }

    //Getters and setters 
    public String getid_login() {
        return Usu_Correo;
    }

    public void setid_login(String Usu_Correo) {
        this.Usu_Correo = Usu_Correo;
    }

    public String getpas_login() {
        return Usu_Contrasena;
    }

    public void setpas_login(String pas_login) {
        this.Usu_Contrasena = pas_login;
    }
}
