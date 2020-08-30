/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mia
 */
public class login {

    public int Ingresar(usuario a){
        int bandera = 0;
        try{
            Connection cn = new bd().getConnection();     
            PreparedStatement pst = cn.prepareCall("select * from usuarios where usuario=? and contra=?");
            pst.setString(1,a.getNombre());
            pst.setString(2,a.getContra());
            ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        bandera++;
                    }
            }catch(Exception e) {}
        return bandera;
    }
    
    public int Ingresar2(usuario a){
        int bandera = 0;
        try{
            Connection cn = new bd().getConnection();     
            PreparedStatement pst = cn.prepareCall("select * from usuarios where usuario=? and contra=? and nivel=?");
            pst.setString(1,a.getNombre());
            pst.setString(2,a.getContra());
            pst.setInt(3,a.getNivel());
            ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        bandera++;
                    }
            }catch(Exception e) {}
        return bandera;
    }
    public int registrar(usuario e){
        int r=0;
        String sql="insert into usuarios values(?,?,?,?,?)";
        Connection c = new bd().getConnection();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, e.getNombre());
            pst.setString(2, e.getNombreoficial());
            pst.setString(3, e.getCorreo());
            pst.setString(4, e.getContra());
            pst.setInt(5, e.getNivel()); 
            r = pst.executeUpdate();
            c.close();
            
        }
        catch(SQLException ex){
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
}
