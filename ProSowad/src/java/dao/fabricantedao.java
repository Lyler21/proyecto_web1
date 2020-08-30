/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.categoriabe;
import be.fabricantebe;
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
 * @author Mia
 */
public class fabricantedao {

    public fabricantedao() {
    }
    public List<fabricantebe> listaFabricante(int cat){
        List<fabricantebe> lista = new ArrayList();
        fabricantebe e = null;
        String sql ="";
        if(cat==0){
            sql ="select codcategoria, codfabricante, nomfabricante from fabricante";
        }else{
            sql ="select codcategoria, codfabricante, nomfabricante from fabricante where codcategoria=? ";
        }
        Connection c = new bd().getConnection();
        try {
            PreparedStatement pst = c.prepareCall(sql);
            if(cat>0){
                pst.setInt(1, cat);
            }
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                e=new fabricantebe();
                e.setCategoria(rs.getInt("codcategoria"));
                e.setCodfabricante(rs.getInt("codfabricante"));
                e.setNomfabricante(rs.getString("nomfabricante"));
                lista.add(e);
            }
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(fabricantedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
     public int registrar(fabricantebe e){
        int r=0;
        String sql="insert into fabricante values(?,?,?)";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getCategoria());
            pst.setInt(2, e.getCodfabricante());
            pst.setString(3, e.getNomfabricante());
            r = pst.executeUpdate();
            c.close();
            
        }
        catch(SQLException ex){
            Logger.getLogger(fabricantedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
     
    public int eliminar(fabricantebe e){
        int r=0;
        String sql="delete from fabricante where codfabricante=?";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(2, e.getCodfabricante());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(fabricantedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }   
    public int actualizar(fabricantebe e){
        int r=0;
        String sql="update fabricante set codcategoria=?, codfabricante=?, nomfabricante=? where codfabricante = ?";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getCategoria());
            pst.setInt(2, e.getCodfabricante());
            pst.setString(3, e.getNomfabricante());
            
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(fabricantedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
}
