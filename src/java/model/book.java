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
public class book {

    private int book_id;
    private String book_name, description, short_des, url_img;
    private author author;
    private favorite favor;
    private category_book category;
    private ArrayList<feedback> feedback;

    public author getAuthor() {
        return author;
    }

    public void setAuthor(author author) {
        this.author = author;
    }
    
    public ArrayList<feedback> getFeedback() {
        return feedback;
    }

    public void setFeedback(ArrayList<feedback> feedback) {
        this.feedback = feedback;
    }
    
    public favorite getFavor() {
        return favor;
    }

    public void setFavor(favorite favor) {
        this.favor = favor;
    }

    public category_book getCategory() {
        return category;
    }

    public void setCategory(category_book category) {
        this.category = category;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getShort_des() {
        return short_des;
    }

    public void setShort_des(String short_des) {
        this.short_des = short_des;
    }
    

}
