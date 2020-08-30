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
public class pedido {
    private int codpe;
    private String codpro;
    private int can;
    private String usu;
    private int total;

    public pedido() {
    }

    public pedido(int codpe, String codpro, int can, String usu, int total) {
        this.codpe = codpe;
        this.codpro = codpro;
        this.can = can;
        this.usu = usu;
        this.total=total;
    }

    public int getCodpe() {
        return codpe;
    }

    public void setCodpe(int codpe) {
        this.codpe = codpe;
    }

    public String getCodpro() {
        return codpro;
    }

    public void setCodpro(String codpro) {
        this.codpro = codpro;
    }

    public int getCan() {
        return can;
    }

    public void setCan(int can) {
        this.can = can;
    }

    public String getUsu() {
        return usu;
    }

    public void setUsu(String usu) {
        this.usu = usu;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

   
}
