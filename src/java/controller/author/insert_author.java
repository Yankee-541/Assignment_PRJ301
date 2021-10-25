/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.author;

import dao.category_author_DBConnect;
import dao.libraryConnect;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.author;
import model.category_book;

/**
 *
 * @author Tebellum
 */
@WebServlet(name = "insert_author", urlPatterns = {"/library/insert_author"})
public class insert_author extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        libraryConnect lib = new libraryConnect();
        ArrayList<author> auth = lib.getAuthor();
        ArrayList<category_book> cates = lib.getCate();
        request.setAttribute("auth", auth);
        request.setAttribute("cates", cates);
        request.getRequestDispatcher("../view_author/insert.jsp").forward(request, response);

//        request.getRequestDispatcher("../view_author/insert_category_author.jsp").forward(request, response); 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        category_author_DBConnect c = new category_author_DBConnect();

        author a = new author();
        a.setName(request.getParameter("name_author"));
        c.insert_author(a);
        response.sendRedirect("insert_author");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
