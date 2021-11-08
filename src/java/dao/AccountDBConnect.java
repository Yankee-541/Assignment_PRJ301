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
import model.group;
import model.permission;

/**
 *
 * @author Tebellum
 */
public class AccountDBConnect extends DBConnect {

       public account getAcc(String user, String pass) {
              try {
                     String sql = "select a.user_id, a.username, a.password,a.displayname, a.phone, a.email,a.avatar,p.pid, p.url, ga.gid,g.gname from account a\n"
                             + "left join GroupAccount ga on ga.user_name = a.username\n"
                             + "left join [Group] g on g.gid = ga.gid\n"
                             + "left join GroupPermission gp on gp.gid = g.gid\n"
                             + "left join permission p on p.pid = gp.pid\n"
                             + "where a.username = ? and a.password = ?";
                     PreparedStatement ps = connection.prepareStatement(sql);
                     ps.setString(1, user);
                     ps.setString(2, pass);
                     ResultSet rs = ps.executeQuery();
                     account acc = null;
                     while (rs.next()) {
                            if (acc == null) {
                                   acc = new account();
                                   acc.setUser_id(rs.getInt(1));
                                   acc.setUser_name(user);
                                   acc.setPassword(pass);
                                   acc.setDisplay_name(rs.getString(4));
                                   acc.setPhone(rs.getString(5));
                                   acc.setEmail(rs.getString(6));
                                   acc.setImg(rs.getString(7));
                            }
                            int pid = rs.getInt("pid");
                            if (pid != 0) {
                                   permission p = new permission();
                                   p.setId(pid);
                                   p.setUrl(rs.getString("url"));
                                   acc.getPermistion().add(p);
                            }
                            int gid = rs.getInt("gid");
                            if(gid !=0 ){
                                 group g = new group();
                                 g.setGid(gid);
                                 g.setUser_name(rs.getString("gname"));
                                 
                                 acc.getGroup().add(g);
                            }
                            
                     }
                     return acc;
              } catch (SQLException ex) {
                     Logger.getLogger(libraryConnect.class.getName()).log(Level.SEVERE, null, ex);
              }
              return null;
       }

//       public static void main(String[] args) {
//              AccountDBConnect a = new AccountDBConnect();
//              account acc = a.getAcc("dang", "dang");
//              System.out.println(acc.getDisplay_name());
//       }

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
