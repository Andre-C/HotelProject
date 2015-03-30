/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Accounts;

/**
 *
 * @author Andre
 */
public class User {
    
    
    private String username;
    private String password; 
    public Rooms room;
    
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    public User(User customer, Rooms room) {
        this.username = customer.username;
        this.password = customer.password;
        this.room = room;        
    }
    
    public User(User customer, String type) {
        this.username = customer.username;
        this.password = customer.password;
        this.room = new Rooms(type);                  
    }
    
    public Rooms getRoom() {
        return room;
    }
    
    public Rooms bookRoom(String type) {
        Rooms room;
        DataBase db = new DataBase();
        db.connect();
       // dbh.select("SELECT * FROM ROOMS WHERE (they are not booked)");
        db.close();
        room = new Rooms(type);
        return room;
    }
    
    public String getUsername() {
        return this.username;
    }
    
}
