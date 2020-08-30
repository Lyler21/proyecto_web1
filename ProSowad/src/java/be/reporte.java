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
public class reporte {
    private int idrepor;
    private String usuario;
    private String etiq;
    private String desc;

    public reporte() {
    }

    public reporte(int idrepor, String usuario, String etiq, String desc) {
        this.idrepor = idrepor;
        this.usuario = usuario;
        this.etiq = etiq;
        this.desc = desc;
    }

    public int getIdrepor() {
        return idrepor;
    }

    public void setIdrepor(int idrepor) {
        this.idrepor = idrepor;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEtiq() {
        return etiq;
    }

    public void setEtiq(String etiq) {
        this.etiq = etiq;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
}
