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
public class fabricantebe {
    private int categoria;
    private int codfabricante;
    private String nomfabricante;

    public fabricantebe() {
    }

    public fabricantebe(int categoria, int codfabricante, String nomfabricante) {
        this.categoria = categoria;
        this.codfabricante = codfabricante;
        this.nomfabricante = nomfabricante;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public int getCodfabricante() {
        return codfabricante;
    }

    public void setCodfabricante(int codfabricante) {
        this.codfabricante = codfabricante;
    }

    public String getNomfabricante() {
        return nomfabricante;
    }

    public void setNomfabricante(String nomfabricante) {
        this.nomfabricante = nomfabricante;
    }
    
}
