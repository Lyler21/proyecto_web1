/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.fabricantebe;
import dao.fabricantedao;
import java.util.List;

/**
 *
 * @author Mia
 */
public class fabricantebr {

    public fabricantebr() {
    }
    public List<fabricantebe> listar(int cant){
        return new fabricantedao().listaFabricante(cant);
    }
    public int nuevo(fabricantebe e){
        return new fabricantedao().registrar(e);
    }
    public int eliminar(fabricantebe e){
        return new fabricantedao().eliminar(e);
    }
}
