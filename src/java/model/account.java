/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Tebellum
 */
public class account {

       private int user_id, isSell, isAdmin;
       private String user_name, password, display_name, phone, email;
       private ArrayList<feedback> feedback;
       private favorite favorite;
       private ArrayList<feature> feature = new ArrayList<>();

       public ArrayList<feature> getFeature() {
              return feature;
       }

       public void setFeature(ArrayList<feature> feature) {
              this.feature = feature;
       }

       public int getIsSell() {
              return isSell;
       }

       public void setIsSell(int isSell) {
              this.isSell = isSell;
       }

       public int getIsAdmin() {
              return isAdmin;
       }

       public void setIsAdmin(int isAdmin) {
              this.isAdmin = isAdmin;
       }

       public ArrayList<feedback> getFeedback() {
              return feedback;
       }

       public void setFeedback(ArrayList<feedback> feedback) {
              this.feedback = feedback;
       }

       public favorite getFavorite() {
              return favorite;
       }

       public void setFavorite(favorite favorite) {
              this.favorite = favorite;
       }

       public int getUser_id() {
              return user_id;
       }

       public void setUser_id(int user_id) {
              this.user_id = user_id;
       }

       public String getUser_name() {
              return user_name;
       }

       public void setUser_name(String user_name) {
              this.user_name = user_name;
       }

       public String getPassword() {
              return password;
       }

       public void setPassword(String password) {
              this.password = password;
       }

       public String getDisplay_name() {
              return display_name;
       }

       public void setDisplay_name(String display_name) {
              this.display_name = display_name;
       }

       public String getPhone() {
              return phone;
       }

       public void setPhone(String phone) {
              this.phone = phone;
       }

       public String getEmail() {
              return email;
       }

       public void setEmail(String email) {
              this.email = email;
       }

}
