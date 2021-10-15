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
import model.category_book;

/**
 *
 * @author Tebellum
 */
public class categoryDBConnect extends DBConnect {

    public ArrayList<category_book> get_cateBook() {

        ArrayList<category_book> cate = new ArrayList<>();
        try {
            String sql = "SELECT [cate_id]\n"
                    + "      ,[categoryName]\n"
                    + "  FROM [categoryBooks]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                category_book catebook = new category_book();
                catebook.setCategory_id(rs.getInt(1));
                catebook.setCategory_name(rs.getString(2));
                cate.add(catebook);
            }
                return cate;

        } catch (SQLException ex) {
            Logger.getLogger(categoryDBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
//    public static void main(String[] args) {
//        categoryDBConnect cdb = new categoryDBConnect();
//        for (category_book c : cdb.get_cateBook()) {
//            System.out.println(c.getCategory_name());
//        }
//    }
}
