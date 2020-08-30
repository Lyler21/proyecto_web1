/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.reporte;
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
public class reportedao {

    public reportedao() {
    }
    public int registrar(reporte e){
        int r=0;
        String sql="insert into reportes values(?,?,?,?)";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getIdrepor());
            pst.setString(2, e.getUsuario());
            pst.setString(3, e.getEtiq());
            pst.setString(4, e.getDesc());
            r = pst.executeUpdate();
            c.close();
            
        }
        catch(SQLException ex){
            Logger.getLogger(reportedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
    public int id_incre(){
        int id = 1;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection c = new bd().getConnection();
        try{
            ps=c.prepareStatement("SELECT MAX(id) FROM reportes");
            rs = ps.executeQuery();
            while(rs.next()){
                id=rs.getInt(1) + 1;
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(reportedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
    public List<reporte> listaPro2(){
        List<reporte> lista = new ArrayList();
        String sql= "select * from reportes ";
        reporte e= null;
        Connection c = new bd().getConnection();
        
        try {
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                int id = (rs.getInt(1));
                String usuario = (rs.getString(2));
                String equita = (rs.getString(3));
                String descrip = (rs.getString(4));
                e = new reporte(id, usuario, equita, descrip);
                lista.add(e);
            }
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(reportedao.class.getName()).log(Level.SEVERE, null, ex);
        }  
        return lista;
    }
     public int eliminar(reporte e){
        int r=0;
        String sql="delete from reportes where id = ?";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, e.getIdrepor());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(fabricantedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }  
}
