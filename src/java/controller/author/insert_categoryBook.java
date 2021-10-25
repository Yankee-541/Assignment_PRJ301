/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.author;

import dao.category_author_DBConnect;
import dao.libraryConnect;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "insert_categoryBook", urlPatterns = {"/library/insert_category"})
public class insert_categoryBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        libraryConnect lib = new libraryConnect();
        ArrayList<author> auth = lib.getAuthor();
        ArrayList<category_book> cates = lib.getCate();
        request.setAttribute("auth", auth);
        request.setAttribute("cates", cates);
//        request.getRequestDispatcher("../view_author/insert_category_author.jsp").forward(request, response);
        request.getRequestDispatcher("../view_author/insert.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        category_author_DBConnect c = new category_author_DBConnect();
        category_book cate = new category_book();
        cate.setCategory_name(request.getParameter("name_category"));
        c.inert_cate(cate);
        response.sendRedirect("insert_category");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
