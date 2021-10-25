/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Tebellum
 */
public class author {

    private int author_id;
    private String name, address;
    private Date dob;
    private ArrayList<book> books;
    private favorite favor;

    public favorite getFavor() {
        return favor;
    }

    public void setFavor(favorite favor) {
        this.favor = favor;
    }

    public ArrayList<book> getBooks() {
        return books;
    }

    public void setBooks(ArrayList<book> books) {
        this.books = books;
    }

    public int getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(int author_id) {
        this.author_id = author_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

}
