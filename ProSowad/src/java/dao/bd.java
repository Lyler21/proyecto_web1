/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.xml.transform.Result;

/**
 *
 * @author Mia
 */
public class bd {

        Connection c=null;
        Statement sta =null;
        Result rs = null;
    public bd() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            c=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto?user=root&password=root");     
            System.err.println("Bueno");
        }catch(Exception e){ 
            System.err.println("Error"+e);
        }
    }
    public Connection getConnection(){
        return c;
    }
    public static void main(String[] args) {
        bd con = new bd();
    }
    
}
