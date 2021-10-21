/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.account;

/**
 *
 * @author Tebellum
 */
public class libraryConnect extends DBConnect {

    public account getAcc(String user, String pass) {
        try {
            String sql = "select * from account where username = ? and [password] = ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                account acc = new account();
                acc.setUser_id(rs.getInt(1));
                acc.setUser_name(user);
                acc.setPassword(pass);
                acc.setDisplay_name(rs.getString(4));
                acc.setPhone(rs.getString(5));
                acc.setEmail(rs.getString(6));
                acc.setIsAdmin(rs.getInt(7));
                acc.setIsSell(rs.getInt(8));

                return acc;
            }

        } catch (SQLException ex) {
            Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

}
