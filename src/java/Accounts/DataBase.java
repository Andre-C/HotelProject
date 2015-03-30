/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package Accounts;
import java.sql.*;
import java.util.ArrayList;
/**
 *
 * @author Andre
 */
public class DataBase {
    
    private Connection connection;
    Statement statement;
    ResultSet rs;
    ArrayList results;
    int count = 0;
    

    public DataBase() {
    }

    public void connect() {
        try {
             Class.forName("oracle.jdbc.OracleDriver").newInstance();
            
             connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok ", "crdn0134", "oracle");
             System.out.println("Connection success!");
            
           } catch (Exception e) {
            
             System.out.println("Connection failed!");
        }
    }

    public ArrayList select(String query, String s) {
         results = new ArrayList();
        
         try {
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            
             while (rs.next()) {
                results.add(rs.getString(s));
            }
            
        } catch (Exception e) {

        }
        return results;
    }

    public int insert(String s) {
        int result;
        
        try {            
            statement = connection.createStatement();
            count = statement.executeUpdate(s);
            result = 0;
            
        } catch (SQLException e) {
            result = 1;
        }
        
        return result;
    }
    
    public void insertBookRoom(int roomNum, String username, String userneeds, String checkin, String checkout) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO BOOKEDROOMS VALUES(?, ?, ?, ?, ?)");            
            preparedStatement.setInt(1, roomNum);
            preparedStatement.setString(2, username);
            preparedStatement.setString(4, checkin);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {

        }        
    }
    
    public void insertItems() 
    { }

    public void update() 
    { }

    public void close() {
        try {
            connection.close();
        } catch (SQLException e) {

        }
    }
    
    public int delete(String s) {
        try {
            statement = connection.createStatement();
            count = statement.executeUpdate("DELETE FROM ROOMS WHERE ROOMNUMBER = " + s);
            return 0;
        } catch (Exception e) {
            return 1;
        }
    }
    
}
