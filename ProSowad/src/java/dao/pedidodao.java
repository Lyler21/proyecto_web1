/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import be.detallep;
import be.pedido;
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
public class pedidodao {
    public int registrar(pedido e){
        int r=0;
        String sql="insert into pedido values(?,?,?,?,?)";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getCodpe());
            pst.setString(2, e.getCodpro());
            pst.setInt(3, e.getCan());
            pst.setString(4, e.getUsu());
            pst.setInt(5, e.getTotal());
            r = pst.executeUpdate();
            c.close();
            
        }
        catch(SQLException ex){
            Logger.getLogger(pedidodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
    public int registrar2(detallep e){
        int r=0;
        String sql="insert into detallep values(?,?,?,?,?,?,?)";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getCodp());
            pst.setString(2, e.getCodde());
            pst.setString(3, e.getPr1());
            pst.setString(4, e.getPr2());
            pst.setString(5, e.getPr3());
            pst.setString(6, e.getPr4());
            pst.setString(7, e.getPr5());
            r = pst.executeUpdate();
            c.close();
            
        }
        catch(SQLException ex){
            Logger.getLogger(pedidodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
    public List<pedido> listaPro(){
        List<pedido> lista = new ArrayList();
        String sql= "select * from pedido";
        pedido e=null;
        Connection c = new bd().getConnection();
        
        try {
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                int pep = (rs.getInt(1));
                String nombre = (rs.getString(2));
                int pep2 = (rs.getInt(3));
                String usua = (rs.getString(4));
                int pes3 = (rs.getInt(5));
                e = new pedido(pep, nombre, pep2, usua, pes3);
                lista.add(e);
            }
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(pedidodao.class.getName()).log(Level.SEVERE, null, ex);
        }  
        return lista;
    }
    public List<pedido> listaPro2(String usu){
        List<pedido> lista = new ArrayList();
        String sql = " ";
        if(usu.equals("admin")){
            sql= "select * from pedido";
        }else{
            sql= "select * from pedido where usua LIKE '"+usu+"%'";
        }
        pedido e= null;
        Connection c = new bd().getConnection();
        
        try {
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                int pep = (rs.getInt(1));
                String nombre = (rs.getString(2));
                int pep2 = (rs.getInt(3));
                String usua = (rs.getString(4));
                int pes3 = (rs.getInt(5));
                e = new pedido(pep, nombre, pep2, usua, pes3);
                lista.add(e);
            }
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(pedidodao.class.getName()).log(Level.SEVERE, null, ex);
        }  
        return lista;
    }
    public int id_incre(){
        int id = 1;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection c = new bd().getConnection();
        try{
            ps=c.prepareStatement("SELECT MAX(codpedido) FROM pedido");
            rs = ps.executeQuery();
            while(rs.next()){
                id=rs.getInt(1) + 1;
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(pedidodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
}
