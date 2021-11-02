/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.author;

import dao.libraryConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tebellum
 */
@WebServlet(name = "delete_book", urlPatterns = {"/library/deleteBook"})
public class delete_book extends HttpServlet {

       protected void processRequest(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              String bid = request.getParameter("id");
              libraryConnect ldb = new libraryConnect();
              ldb.deleteBook(bid);
              response.sendRedirect("list");

       }

       @Override
       protected void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              processRequest(request, response);
       }

       @Override
       protected void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              processRequest(request, response);
       }

       /**
        * Returns a short description of the servlet.
        *
        * @return a String containing servlet description
        */
       @Override
       public String getServletInfo() {
              return "Short description";
       }// </editor-fold>

}
