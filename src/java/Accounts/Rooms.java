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
public class Rooms {

    public String roomNum; 
    public String type;
    public double price;

    
    public Rooms(String type) {
        if(type.equals("Single")) {
            this.type = type;
            this.price = 120.0;
            
        } else if(type.equals("Double")) {
            this.type = type;
            this.price = 180.0;
            
        } else if(type.equals("Suit")) {
            this.type = type;
            this.price = 210.0;
        }
       
    }
    
    public Rooms(String roomNum, String type) {
        this.roomNum = roomNum;
        this.type = type;
    }
    
    public String priceString() {
        this.price = this.price * 1.13;
        return String.format("%.2f", this.price);
    }
    
    public Rooms bookRoom(String type) {
        Rooms room;
        DataBase dbh = new DataBase();
        dbh.connect();
        //dbh.select("SELECT * FROM ROOMS WHERE (rooms booked = booked )");
        dbh.close();
        room = new Rooms(type);
        return room;
    }
        
    
}
