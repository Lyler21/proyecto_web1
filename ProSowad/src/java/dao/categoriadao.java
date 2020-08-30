/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.categoriabe;
import be.productobe;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rrodas
 */
public class categoriadao {

    public categoriadao() {
    }
    public List<categoriabe> listaCategorias(){
        List<categoriabe> lista = new ArrayList();
        String sql= "select codcategoria, nomcategoria from categoria";
        categoriabe e=null;
        Connection c = new bd().getConnection();
        
        try {
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                e=new categoriabe();
                e.setCodigo(rs.getInt("codcategoria"));
                e.setNomcodigo(rs.getString("nomcategoria"));
                lista.add(e);
            }
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(categoriadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return lista;
    }
    
    public int registrar(categoriabe e){
        int r=0;
        String sql="insert into categoria values(?,?)";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getCodigo());
            pst.setString(2, e.getNomcodigo());
            r = pst.executeUpdate();
            c.close();
            
        }
        catch(SQLException ex){
            Logger.getLogger(categoriadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
    public int eliminar(categoriabe e){
        int r=0;
        String sql="delete from categoria where codcategoria=?";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getCodigo());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(categoriadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    } 
}
