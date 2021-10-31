/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.bookDBConnect;
import dao.category_author_DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.book;
import model.category_book;

/**
 *
 * @author Tebellum
 */
public class Category_controller extends HttpServlet {

       @Override
       protected void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
              category_author_DBConnect cdbc = new category_author_DBConnect();
              ArrayList<category_book> list_cate = cdbc.get_cateBook();
              bookDBConnect bdbc = new bookDBConnect();
              ArrayList<book> books = bdbc.get_books();
              request.setAttribute("cates", list_cate);
              request.setAttribute("books", books);

//        request.getRequestDispatcher("../view/home.jsp").forward(request, response);
              request.getRequestDispatcher("../view/category_book.jsp").forward(request, response);

       }

       @Override
       protected void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {

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
