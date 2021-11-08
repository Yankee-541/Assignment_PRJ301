/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.author;

import controller.login.requiedAuthenController;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tebellum
 */
@WebServlet(name = "Edit_information", urlPatterns = {"/library/editInformation"})
public class Edit_information extends requiedAuthenController {

       @Override
       protected void processGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {

       }

       @Override
       protected void processPost(HttpServletRequest request, HttpServletResponse response)
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
