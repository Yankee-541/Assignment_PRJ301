/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.login;

import dao.AccountDBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.account;

/**
 *
 * @author Tebellum
 */
@WebServlet(name = "sigup_controller", urlPatterns = {"/library/signup"})
public class sigup_controller extends HttpServlet {

       @Override
       protected void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              request.getRequestDispatcher("../view/login/Login.jsp").forward(request, response);
       }

       @Override
       protected void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              account a = new account();
              a.setDisplay_name(request.getParameter("userDisplayName"));
              a.setUser_name(request.getParameter("user"));
              a.setPassword(request.getParameter("pass"));

              AccountDBConnect adb = new AccountDBConnect();
              adb.sigup(a);

              a = adb.getAcc(a.getUser_name(), a.getPassword());
              if (a == null) {
                     request.setAttribute("mess", "!!! Invalid username or pasword");
                     request.getSession().setAttribute("account", a);
                     request.getRequestDispatcher("../view/login/Login.jsp").forward(request, response);
              } else {
                     request.getSession().setAttribute("account", a);
                     response.sendRedirect("home");
              }

       }

       @Override
       public String getServletInfo() {
              return "Short description";
       }// </editor-fold>

}
