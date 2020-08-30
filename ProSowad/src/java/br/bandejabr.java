/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.productobe;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mia
 */
public class bandejabr {
    private int total;
    private int numproductos;
    private List<productobe>lista;
    public bandejabr() {
        total=0;
        lista = new ArrayList();
        
    }
    
    public void agregar(productobe p){
        total = total + (p.getCantidad()*p.getPrecio());
        int pos = buscar(p.getCodigo());
        if(pos<0){
            lista.add(p);
        }else{
            productobe e = lista.get(pos);
            int actual = e.getCantidad();
            int nuevo =actual+p.getCantidad();
            e.setCantidad(nuevo);
            lista.set(pos, e);
        }
    }
    public void eliminar(String codpro){
        
        int pos=buscar(codpro);
        if(pos>=0){
            productobe e = lista.get(pos);
            total = total - (e.getCantidad()*e.getPrecio());
            lista.remove(pos);
        }
    }
    public int buscar(String cod){
        int i=0;
        int pos=-1;
        for(productobe e:lista){
            if(e.getCodigo().equals(cod)){
                pos=i;
            }
            i++;
        }
        return pos;
    }

    public int getTotal() {
        return total;
    }

    public int getNumproductos() {
        return numproductos;
    }

    public List<productobe> getLista() {
        return lista;
    }
    
}
