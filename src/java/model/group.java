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
public class group {
       private String user_name;
       private int gid;

       public group() {
       }

       public group(String user_name, int gid) {
              this.user_name = user_name;
              this.gid = gid;
       }

       public String getUser_name() {
              return user_name;
       }

       public void setUser_name(String user_name) {
              this.user_name = user_name;
       }

       public int getGid() {
              return gid;
       }

       public void setGid(int gid) {
              this.gid = gid;
       }
       
       
       
       
}
