/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.categoriabe;
import dao.categoriadao;
import java.util.List;

/**
 *
 * @author Mia
 */
public class categoriabr {

    public categoriabr() {
    }
    public List<categoriabe> listar(){
        return new categoriadao().listaCategorias();
    }
    public int nuevo(categoriabe e){
        return new categoriadao().registrar(e);
    }
    
    public int eliminar(categoriabe e){
        return new categoriadao().eliminar(e);
    }
}
