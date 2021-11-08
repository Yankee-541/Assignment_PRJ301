/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.book;

/**
 *
 * @author Tebellum
 */
public class bookDBConnect extends DBConnect {

       public int getRowCount() {
              String sql = "Select COUNT(*) as total from Book";
              try {
                     PreparedStatement ps = connection.prepareStatement(sql);
                     ResultSet rs = ps.executeQuery();
                     if (rs.next()) {
                            return rs.getInt("Total");
                     }
              } catch (SQLException ex) {
                     Logger.getLogger(bookDBConnect.class.getName()).log(Level.SEVERE, null, ex);
              }
              return -1;//khong đọc được cái gì cho ra lỗi
       }

       public ArrayList<book> get_books_Pagging(int pageIndex, int pageSize) {
              ArrayList<book> books = new ArrayList<>();
              try {
                     String sql = "select [book_id],book_name,[imagin] from(\n"
                             + "select ROW_NUMBER() over (ORDER BY [book_id] desc) \n"
                             + "as rownum, [book_id], book_name, [imagin] From Book) b\n"
                             + " where rownum >= (? -1)*? +1 "
                             + "and rownum <= ? * ?";
                     PreparedStatement ps = connection.prepareStatement(sql);
                     ps.setInt(1, pageIndex);
                     ps.setInt(2, pageSize);
                     ps.setInt(3, pageIndex);
                     ps.setInt(4, pageSize);
                     ResultSet rs = ps.executeQuery();
                     while (rs.next()) {
                            book b = new book();
                            b.setBook_id(rs.getInt(1));
                            b.setBook_name(rs.getString(2));
//                            b.setDescription(rs.getString(3));
//                            b.setShort_des(rs.getString(4));
                            b.setUrl_img(rs.getString("imagin"));
                            books.add(b);
                     }
              } catch (SQLException ex) {
                     Logger.getLogger(bookDBConnect.class.getName()).log(Level.SEVERE, null, ex);
              }
              return books;
       }

       public ArrayList<book> get_books() {
              ArrayList<book> books = new ArrayList<>();
              try {
                     String sql = "select * from book";
                     PreparedStatement ps = connection.prepareStatement(sql);
                     ResultSet rs = ps.executeQuery();
                     while (rs.next()) {
                            book b = new book();
                            b.setBook_id(rs.getInt(1));
                            b.setBook_name(rs.getString(2));
                            b.setDescription(rs.getString(3));
                            b.setShort_des(rs.getString(4));
                            b.setUrl_img(rs.getString("imagin"));
                            books.add(b);
                     }
              } catch (SQLException ex) {
                     Logger.getLogger(bookDBConnect.class.getName()).log(Level.SEVERE, null, ex);
              }
              return books;
       }
//    public static void main(String[] args) {
//        bookDBConnect b = new bookDBConnect();
//        for (book book : b.get_books()) {
//            System.out.println(book.getBook_name());
//        }
//    }
}
