/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.book;

/**
 *
 * @author Tebellum
 */
public class bookDBConnect {
    
    public ArrayList<book> get_books(){
        ArrayList<book> books = new ArrayList<>();
        String sql = "select * from book";
        
        
        
        return books;
    }
    
    
}
