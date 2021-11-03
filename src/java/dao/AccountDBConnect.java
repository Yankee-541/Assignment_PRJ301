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
public class AccountDBConnect extends DBConnect {

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
                            acc.setImg(rs.getString(7));
//                            acc.setIsAdmin(rs.getInt(7));
//                            acc.setIsSell(rs.getInt(8));
                            return acc;
                     }
              } catch (SQLException ex) {
                     Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
              }
              return null;
       }

       public account getInfomation(String user) {
              try {
                     String sql = "select * from account \n"
                             + "where account.user_id = ?";
                     PreparedStatement ps = connection.prepareStatement(sql);
                     ps.setString(1, user);
                     ResultSet rs = ps.executeQuery();
                     if (rs.next()) {
                            account acc = new account();
                            acc.setUser_id(rs.getInt(1));
                            acc.setUser_name(user);
//                            acc.setPassword(rs.getString(3));
                            acc.setDisplay_name(rs.getString(4));
                            acc.setPhone(rs.getString(5));
                            acc.setEmail(rs.getString(6));
                            acc.setImg(rs.getString(7));
                            return acc;

                     }

              } catch (SQLException ex) {
                     Logger.getLogger(AccountDBConnect.class.getName()).log(Level.SEVERE, null, ex);
              }
              return null;
       }

       public void sigup(account a) {
              try {
                     String sql = "INSERT INTO [account]\n"
                             + "           ([username]\n"
                             + "           ,[password]\n"
                             + "           ,[displayname])\n"
                             + "     VALUES\n"
                             + "           (?,?,?)";
                     PreparedStatement ps = connection.prepareStatement(sql);
                     ps.setString(1, a.getUser_name());
                     ps.setString(2, a.getPassword());
                     ps.setString(3, a.getDisplay_name());
                     ps.executeUpdate();
                     
              } catch (SQLException ex) {
                     Logger.getLogger(AccountDBConnect.class.getName()).log(Level.SEVERE, null, ex);
              }   
       }

//       public static void main(String[] args) {
//              AccountDBConnect a = new AccountDBConnect();
//              String u = "dang";
//              String p = "dang";
//              account acc = a.getAcc(u, p);
//              System.out.println(acc.getUser_name());
//       }
}
