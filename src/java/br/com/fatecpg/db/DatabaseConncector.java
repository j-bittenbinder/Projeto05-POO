/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Positivo
 */
public class DatabaseConncector {
    private static final String DRIVER = "org.apache.derby.jdbc.ClientDriver";
    private static final String URL = "jdbc:derby://localhost:1527/concessionariaDB";
    private static final String USER = "grupo05";
    private static final String PASS = "12345";
    
    public static ArrayList<Object[]> getQuery(String SQL, Object[] parameters) throws Exception{
        ArrayList<Object[]> list = new ArrayList();
        Class.forName(DRIVER);
        Connection grupo05Con = DriverManager.getConnection(URL, USER, PASS);
        Statement stmt = grupo05Con.createStatement();        
       
        ResultSet rs = stmt.executeQuery(SQL);
        
        while(rs.next()){
            Object row[] = new Object[rs.getMetaData().getColumnCount()];
            for(int i = 0; i < rs.getMetaData().getColumnCount(); i++){
                row[i] = rs.getObject(i+1);
            }
            list.add(row);
        }
        rs.close(); stmt.close(); grupo05Con.close();
        
        return list;
    }
    
    public static void execute (String SQL, Object[] parameters) throws Exception{
        ArrayList<Object[]> list = new ArrayList();
        Class.forName(DRIVER);
        Connection grupo05Con = DriverManager.getConnection(URL, USER, PASS);
        PreparedStatement stmt = grupo05Con.prepareStatement(SQL);
        
        for(int i = 0; i < parameters.length; i++){
            stmt.setObject(i+1, parameters[i]);
        }
        
        stmt.execute();
        stmt.close(); grupo05Con.close();
        
      
    }
}
