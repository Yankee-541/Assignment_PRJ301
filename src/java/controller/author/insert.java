/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.author;

import dao.libraryConnect;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.author;
import model.book;
import model.category_book;

/**
 *
 * @author Tebellum
 */
@WebServlet(name = "insert", urlPatterns = {"/library/insert"})
public class insert extends HttpServlet {

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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        book b = new book();
        b.setBook_name(request.getParameter("book_name"));
        b.setDescription(request.getParameter("description"));
        b.setShort_des(request.getParameter("short_des"));
        b.setUrl_img(request.getParameter("url_img"));
        
        author a = new author();
        a.setAuthor_id(Integer.parseInt(request.getParameter("author_id")));
        b.setAuthor(a);
        category_book c = new category_book();
        c.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
        b.setCategory(c);

        libraryConnect lib = new libraryConnect();
        lib.insert(b);
        response.sendRedirect("insert");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
