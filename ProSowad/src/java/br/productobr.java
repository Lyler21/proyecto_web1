/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.productobe;
import dao.productodao;
import java.util.List;

/**
 *
 * @author Mia
 */
public class productobr {

    public productobr() {
    }
    public List<productobe> listaProList(int cant,int fab){
        return new productodao().listaProList(cant,fab);
    }
    public List<productobe> listaPro(String p){
        return new productodao().listaPro(p);
    }
    
    public int nuevo(productobe e){
        return new productodao().registrar(e);
    }
}
