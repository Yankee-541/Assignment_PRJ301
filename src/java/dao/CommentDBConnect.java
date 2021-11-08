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
import model.account;
import model.author;
import model.book;
import model.feedback;

/**
 *
 * @author Tebellum
 */
public class CommentDBConnect extends DBConnect {

       private void insertComment(feedback f) {
              String sql = "INSERT INTO [feedback]\n"
                      + "           ([user_name]\n"
                      + "           ,[comment]\n"
                      + "           ,[bookId])\n"
                      + "     VALUES\n"
                      + "           (?,?,?)";
              PreparedStatement ps;
              try {
                     ps = connection.prepareStatement(sql);
                     ps.setString(1, f.getAccount().getUser_name());
                     ps.setString(2, f.getComment());
                     ps.setInt(3, f.getBook().getBook_id());
                     ps.executeUpdate();

              } catch (SQLException ex) {
                     Logger.getLogger(CommentDBConnect.class.getName()).log(Level.SEVERE, null, ex);
              }

       }

       public ArrayList<feedback> displayfeedback(book bid) {
              ArrayList<feedback> listfeedback = new ArrayList<>();
              String sql = "select f.commentID,f.comment,f.bookId,f.user_name,b.book_name,b.book_id\n"
                      + "from feedback f left Join Book b on f.bookId = b.book_id\n"
                      + "left join account a on a.username = f.user_name "
                      + "where book_id = ?";
              try {
                     PreparedStatement ps = connection.prepareStatement(sql);
                     ps.setInt(1, bid.getBook_id());
                     ResultSet rs = ps.executeQuery();
                     while (rs.next()) {
                            feedback f = new feedback();
                            f.setComment(rs.getString("comment"));
                            f.setCommentID(rs.getInt("commentID"));

                            book b = new book();
                            b.setBook_id(rs.getInt("bookId"));
                            f.setBook(b);

                            account a = new account();
                            a.setUser_name(rs.getString("user_name"));
                            f.setAccount(a);
                            
                            listfeedback.add(f);
                     }
              } catch (SQLException ex) {
                     Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
              }
              return listfeedback;
       }

}
