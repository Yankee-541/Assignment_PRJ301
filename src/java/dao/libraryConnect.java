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
import model.category_book;

/**
 *
 * @author Tebellum
 */
public class libraryConnect extends DBConnect {

    public book getbook(String book_id) {
        try {
            String sql = "select b.book_id,b.book_name,b.[description],b.short_des,b.imagin, cb.cate_id,cb.categoryName,\n"
                    + "a.author_id,a.author_name\n"
                    + "from Book b inner join categoryBooks cb on b.categoryId = cb.cate_id\n"
                    + "inner join author a on b.author_id = a.author_id\n"
                    + "where b.book_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, book_id);
            ResultSet rs = ps.executeQuery();
            book b = null;
            while (rs.next()) {
                if (b == null) {
                    b = new book();
                    b.setBook_id(rs.getInt(1));
                    b.setBook_name(rs.getString(2));
                    b.setDescription(rs.getString(3));
                    b.setShort_des(rs.getString(4));
                    b.setUrl_img(rs.getString("imagin"));
                    
                    category_book cb = new category_book();
                    cb.setCategory_id(rs.getInt("cate_id"));
                    cb.setCategory_name(rs.getString("categoryName"));

                    author a = new author();
                    a.setAuthor_id(rs.getInt("author_id"));
                    a.setName(rs.getString("author_name"));

                    b.setCategory(cb);
                    b.setAuthor(a);
                }
            }
            return b;

        } catch (SQLException ex) {
            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
//    public static void main(String[] args) {
//        libraryConnect l  = new libraryConnect();
//       book b=  l.getbook(1024);
//        System.out.println(b.getBook_name());
//    }

    public void updateBook(book b) {
        try {
//            connection.setAutoCommit(false);
            String sql = "UPDATE [Book]\n"
                    + "   SET [book_name] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[short_des] = ?\n"
                    + "      ,[author_id] = ?\n"
                    + "      ,[categoryId] = ?\n"
                    +"       ,[imagin] = ?\n"
                    + " WHERE [Book].book_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, b.getBook_name());
            ps.setString(2, b.getDescription());
            ps.setString(3, b.getShort_des());
            ps.setInt(4, b.getAuthor().getAuthor_id());
            ps.setInt(5, b.getCategory().getCategory_id());
            ps.setString(6, b.getUrl_img());
            ps.setInt(7, b.getBook_id());
            ps.executeUpdate();//lấy giá trị từ SQL

//            connection.commit();
        } catch (SQLException ex) {
            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
//            try {
//                connection.rollback();
//            } catch (SQLException ex1) {
//                Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex1);
//            }
        }

    }

    public ArrayList<book> getBooks() {
        ArrayList<book> books = new ArrayList<>();
        String sql = "select book_id,book_name,[description],short_des,a.author_id,a.author_name,"
                + "c.cate_id,c.categoryName from book b \n"
                + "inner join author a on b.author_id = a.author_id\n"
                + "inner join categoryBooks c on b.categoryId = c.cate_id";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                book b = new book();
                b.setBook_id(rs.getInt(1));
                b.setBook_name(rs.getString(2));
                b.setDescription(rs.getString(3));
                b.setShort_des(rs.getString(4));

                author a = new author();
                a.setAuthor_id(rs.getInt(5));
                a.setName(rs.getString(6));
                b.setAuthor(a);

                category_book c = new category_book();
                c.setCategory_id(rs.getInt(7));
                c.setCategory_name(rs.getString(8));
                b.setCategory(c);

                books.add(b);
            }
        } catch (SQLException ex) {
            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return books;
    }

//    public static void main(String[] args) {
//        libraryConnect lib = new libraryConnect();
//        for (book b : lib.getBooks()) {
//            System.out.println(b.getBook_name());
//        }
//    }
//    public account getAcc(String user, String pass) {
//        try {
//            String sql = "select * from account where username = ? and [password] = ? ";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setString(1, user);
//            ps.setString(2, pass);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                account acc = new account();
//                acc.setUser_id(rs.getInt(1));
//                acc.setUser_name(user);
//                acc.setPassword(pass);
//                acc.setDisplay_name(rs.getString(4));
//                acc.setPhone(rs.getString(5));
//                acc.setEmail(rs.getString(6));
//                acc.setIsAdmin(rs.getInt(7));
//                acc.setIsSell(rs.getInt(8));
//
//                return acc;
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }

    public ArrayList<author> getAuthor() {
        ArrayList<author> listAuthor = new ArrayList<>();
        String sql = "select * from author";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                author a = new author();
                a.setAuthor_id(rs.getInt(1));
                a.setName(rs.getString(2));
                listAuthor.add(a);

            }
        } catch (SQLException ex) {
            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listAuthor;
    }
//    public static void main(String[] args) {
//        libraryConnect l = new libraryConnect();
//        for (author a : l.getAuthor()) {
//            System.out.println(a.getName());
//        }
//    }

    public ArrayList<category_book> getCate() {
        ArrayList<category_book> cates = new ArrayList<>();
        String sql = "select * from categoryBooks";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                category_book cate = new category_book();
                cate.setCategory_id(rs.getInt(1));
                cate.setCategory_name(rs.getString(2));
                cates.add(cate);

            }
        } catch (SQLException ex) {
            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cates;
    }

    public void insert(book b) {
        try {
            String sql = "INSERT INTO [Book]\n"
                    + "           ([book_name]\n"
                    + "           ,[description]\n"
                    + "           ,[short_des]\n"
                    + "           ,[author_id]\n"
                    + "           ,[categoryId]\n"
                    +"             , [imagin])"
                    + "         VALUES\n"
                    + "           (?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, b.getBook_name());
            ps.setString(2, b.getDescription());
            ps.setString(3, b.getShort_des());
            ps.setInt(4, b.getAuthor().getAuthor_id());
            ps.setInt(5, b.getCategory().getCategory_id());
            ps.setString(6, b.getUrl_img());
            
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
