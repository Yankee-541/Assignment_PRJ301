/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Tebellum
 */
public class category_book {

    private String category_name;
    private int category_id;
    private ArrayList<book> books;

    public ArrayList<book> getBooks() {
        return books;
    }

    public void setBooks(ArrayList<book> books) {
        this.books = books;
    }
    
    
    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }
    
    
}
