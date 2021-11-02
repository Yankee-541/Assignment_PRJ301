/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.account;
import model.feature;

/**
 *
 * @author Tebellum
 */
public abstract class requiedAuthenController extends HttpServlet {

       private boolean isAuthenticated(HttpServletRequest request) {
              account a = (account) request.getSession().getAttribute("account");
              if (a == null) {
                     return false;
              }
              String url = request.getServletPath();
              for(feature f : a.getFeature()) {
                     if (f.getUrl().equals(url)) {
                            return true;
                     }
              }
              return false;
//              return request.getSession().getAttribute("account") == null;
       }

       @Override
       protected void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              if (isAuthenticated(request)) {
                     processGet(request, response);
              } else {
                     response.sendRedirect("login");
              }
       }

       protected abstract void processGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException;//xử lí lớp con

       protected abstract void processPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException;

       @Override
       protected void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              if (isAuthenticated(request)) {
                     processGet(request, response);
              } else {
                     response.getWriter().println("ohh noo khong duoc phep nha");
//                     response.sendRedirect("ohh noo khong duoc phep nha");
              }
       }

       @Override
       public String getServletInfo() {
              return "Short description";
       }// </editor-fold>

}
