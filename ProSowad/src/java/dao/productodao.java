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
 * @author Mia
 */
public class productodao {

    public productodao() {
    }
    public List<productobe> listaProList(int cat, int fab){
        List<productobe> lista = new ArrayList();
        String sql="";
        if(cat==0 && fab ==0){
            sql ="select codproducto, codcategoria, codfabricante, nomproducto, stock, stockcompromiso, precio, cantidad from producto";
        }else{
            if(cat>0 && fab>0){
                sql ="select codproducto, codcategoria, codfabricante, nomproducto, stock, stockcompromiso, precio, cantidad from producto where codcategoria=? and codfabricante=?";
            }else{
                if(cat>0){
                    sql ="select codproducto, codcategoria, codfabricante, nomproducto, stock, stockcompromiso, precio, cantidad from producto where codcategoria=?";
                }else{
                    sql ="select codproducto, codcategoria, codfabricante, nomproducto, stock, stockcompromiso, precio, cantidad from producto where codfabricante=?";
                }
            }
            
        }
        productobe e =null;
        Connection c = new bd().getConnection();
        
        try {
            PreparedStatement pst = c.prepareCall(sql);
             if(cat==0 && fab ==0){
            //sql ="select codproducto, codcategoria, codfabricante, nomproducto, stock, stockcompromiso, precio, cantidad from producto";
            }else{
                if(cat>0 && fab>0){
                    pst.setInt(1, cat);
                    pst.setInt(2, fab);
                }else{
                    if(cat>0){
                    pst.setInt(1, cat);
                    }else{
                    pst.setInt(1, fab);
                }
            }
            
        }
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                e=new productobe();
                e.setCodigo(rs.getString("codproducto"));
                e.setNombre(rs.getString("nomproducto"));
                e.setStock(rs.getInt("stock"));
                e.setCompromiso(rs.getInt("stockcompromiso"));
                e.setPrecio(rs.getInt("precio"));
                e.setCantidad(rs.getInt("cantidad"));
                e.setCategoria(rs.getInt("codcategoria"));
                e.setFabricante(rs.getInt("codfabricante"));
                lista.add(e);
            }
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    public List<productobe> listaPro(String p){
        List<productobe> lista = new ArrayList();
        String sql= "select * from producto where codproducto LIKE '"+p+"%'";
        productobe e=null;
        Connection c = new bd().getConnection();
        
        try {
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                e.setCodigo(rs.getString("codproducto"));
                e.setNombre(rs.getString("nomproducto"));
                e.setStock(rs.getInt("stock"));
                e.setCompromiso(rs.getInt("stockcompromiso"));
                e.setPrecio(rs.getInt("precio"));
                e.setCantidad(rs.getInt("cantidad"));
                e.setCategoria(rs.getInt("codcategoria"));
                e.setFabricante(rs.getInt("codfabricante"));
                lista.add(e);
            }
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }  
        return lista;
    }
    public int registrar(productobe e){
        int r=0;
        String sql="insert into producto values(?,?,?)";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, e.getCodigo());
            pst.setString(4, e.getNombre());
            pst.setBlob(9, e.getImg());
            r = pst.executeUpdate();
            c.close();
            
        }
        catch(SQLException ex){
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
    public int eliminar(productobe e){
        int r=0;
        String sql="delete from producto where codproducto=?";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, e.getCodigo());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }   
    public int actualizar(productobe e){
        int r=0;
        String sql="update producto set codproducto=?,codcategoria=?, codfabricante=?, nomproducto=?, stock=?, stockcompromiso=?, precio=?, cantidad=? where codproducto = ?";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, e.getCodigo());
            pst.setInt(2, e.getCategoria());
            pst.setInt(3, e.getFabricante());
            pst.setString(4, e.getNombre());
            pst.setInt(5, e.getStock());
            pst.setInt(6, e.getCompromiso());
            pst.setInt(7, e.getPrecio());
            pst.setInt(8, e.getCantidad());
            
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
}
