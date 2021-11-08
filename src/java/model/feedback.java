/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Tebellum
 */
public class feedback {
       
    private account account;
    private book book;
    private String comment;
    private int commentID;

       public int getCommentID() {
              return commentID;
       }

       public void setCommentID(int commentID) {
              this.commentID = commentID;
       }
    
    public account getAccount() {
        return account;
    }

    public void setAccount(account account) {
        this.account = account;
    }

    public book getBook() {
        return book;
    }

    public void setBook(book book) {
        this.book = book;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
    
    
}
