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
@WebServlet(name = "profile", urlPatterns = {"/library/profile"})
public class profile extends HttpServlet {

       @Override
       protected void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              String id = request.getParameter("id");
              AccountDBConnect a = new AccountDBConnect();
              account acc = a.getInfomation(id);

              request.setAttribute("account", acc);
              request.getRequestDispatcher("../view/profile.jsp").forward(request, response);
       }

       @Override
       protected void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              String id = request.getParameter("id");
              AccountDBConnect a = new AccountDBConnect();
              account acc = a.getInfomation(id);

              request.setAttribute("account", acc);
              request.getRequestDispatcher("../view/profile.jsp").forward(request, response);

       }

       @Override
       public String getServletInfo() {
              return "Short description";
       }// </editor-fold>

}
