/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

/**
 *
 * @author Mia
 */
public class usuario {
    private String nombre;
    private String nombreoficial;
    private String correo;
    private String contra;
    private int nivel;

    public usuario() {
    }

    public usuario(String nombre, String nombreoficial, String correo, String contra, int nivel) {
        this.nombre = nombre;
        this.nombreoficial = nombreoficial;
        this.correo = correo;
        this.contra = contra;
        this.nivel = nivel;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreoficial() {
        return nombreoficial;
    }

    public void setNombreoficial(String nombreoficial) {
        this.nombreoficial = nombreoficial;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }
    

    
    
}
