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
public class categoriabe {
    private int codigo;
    private String nomcodigo;

    public categoriabe() {
    }

    public categoriabe(int codigo, String nomcodigo) {
        this.codigo = codigo;
        this.nomcodigo = nomcodigo;
    }

    public categoriabe(categoriabe e) {
        
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNomcodigo() {
        return nomcodigo;
    }

    public void setNomcodigo(String nomcodigo) {
        this.nomcodigo = nomcodigo;
    }
    
}
