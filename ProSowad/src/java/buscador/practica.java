/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package buscador;

import dao.bd;
import dao.categoriadao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mia
 */
public class practica {

    public boolean practica(String dni){
        boolean existe = false;
        List<String> lista = new ArrayList<>();
        String sql="select nomcategoria from categoria";
        Connection c = new bd().getConnection();
        ResultSet rs = null;
        try{
            PreparedStatement pst = c.prepareCall(sql);
            rs=pst.executeQuery();
            while(rs.next()){
                lista.add(rs.getString(1));
            }
        }
        catch(SQLException ex){
            //Logger.getLogger(categoriadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        for (int i = 0; i < lista.size(); i++) {
            if(lista.get(i).equals(dni)){
                existe = true;
            }
        }
        return existe;
    }
    
    public boolean practicas(String dni,String x){
        boolean existe = false;
        List<String> lista = new ArrayList<>();
        String sql="select usuario,contra from usuarios";
        Connection c = new bd().getConnection();
        ResultSet rs = null;
        try{
            PreparedStatement pst = c.prepareCall(sql);
            rs=pst.executeQuery();
            while(rs.next()){
                lista.add(rs.getString(1));
                lista.add(rs.getString(4));
            }
        }
        catch(SQLException ex){
            //Logger.getLogger(categoriadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        for (int i = 0; i < lista.size(); i++) {
            if(lista.get(i).equals(dni) && lista.get(i).equals(x)){
                existe = true;
            }
        }
        return existe;
    }
    

    
    public static void main(String[] args) {
        boolean h = new practica().practica("puno");
        if(h) System.out.println("ya esta pendejo");
        boolean b = new practica().practicas("admin","123");
        if(b) System.out.println("lolo");
    }
}
