<%-- 
    Document   : update_bôk
    Created on : Oct 26, 2021, 9:36:07 AM
    Author     : Tebellum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
       <head>
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <title>JSP Page</title>
              <style>
                     .container{
                            width: 100vw;
                            height: auto;
                            box-sizing: border-box;
                            display: flex;
                     }
                     .left{
                            float: left;
                            width: 73%;

                            height: auto;
                     }
                     .right{
                            padding-left:  20px;
                            float: right;
                            width: 25%;
                            height: auto;
                            border-left: 1px solid black;

                     }
                     input{
                            width: 843px;
                            /*height: 250px;*/
                     }
              </style>
       </head>
       <body>
              <form action="updatebook" method="POST">
                     <table>
                            <tr>
                                   <td>
                            <tr>
                                   <td>Book ID</td>
                                   <td>
                                          ${requestScope.book.book_id}
                                          <input name="book_id"  type="hidden" value="${requestScope.book.book_id}">
                                   </td>
                            </tr>
                            <tr>
                                   <td>Book Name</td>
                                   <td>
                                          <input name="book_name"  type="text" value="${requestScope.book.book_name}">
                                   </td>
                            </tr>
                            <tr>
                                   <td>Description</td>
                                   <td>
                                          <textarea id="description"  name="description" rows="10" cols="80">${requestScope.book.description}</textarea>
                                          <!--<input name="description" type="text" value="${requestScope.book.description}">-->
                                   </td>
                            </tr>
                            <tr>
                                   <td>Short description</td>
                                   <td>
                                          <textarea id="short_des"  name="short_des" rows="8" cols="80">${requestScope.book.short_des}</textarea>
                                          <!--<input name="short_des" type="text" value="${requestScope.book.short_des}">-->
                                   </td>
                            </tr>
                            <tr>
                                   <td>URL Imagin</td>
                                   <td>
                                          <textarea id="url_img"  name="url_img" rows="5" cols="80">${requestScope.book.url_img}</textarea>
                                          <!--<input name="description" type="text" value="${requestScope.book.url_img}">-->
                                   </td>
                            </tr>
                            <tr>
                                   <td>Author name</td>
                                   <td>
                                          <select name="author_id">
                                                 <c:forEach items="${requestScope.auth}" var="a">
                                                        <option 
                                                               <c:if test="${a.author_id eq requestScope.book.author.author_id}">
                                                                      selected="selected"
                                                               </c:if> value="${a.author_id}">${a.name}
                                                        </option>
                                                 </c:forEach>
                                          </select>
                                   </td>
                            </tr>
                            <tr>
                                   <td> Category</td>
                                   <td>
                                          <select name="category_id">
                                                 <c:forEach items="${requestScope.cates}" var="c">
                                                        <option 
                                                               <c:if test="${c.category_id eq requestScope.book.category.category_id}">
                                                                      selected="selected"
                                                               </c:if> value="${c.category_id}">${c.category_name}
                                                        </option>
                                                 </c:forEach>
                                          </select>
                                   </td>
                            </tr>
                            </td>
                            </tr>
                     </table>
                     <input style="width: 70px" type="submit" value="Save"><br>
              </form>

       </body>
</html>
<!--Book name: <input name="book_name" type="text" value="${requestScope.book.book_name}"><br>-->
<!--            Description: <input name="description" type="text" value="${requestScope.book.description}"><br>-->
<!--Short description: <input name="short_des" type="text" value="${requestScope.book.short_des}"><br>-->
<!--            Category: 
            <select name="category_id">
<c:forEach items="${requestScope.cates}" var="c">
    <option 
       <c:if test="${c.category_id eq requestScope.book.category.category_id}">
           selected="selected"
       </c:if> value="${c.category_id}">${c.category_name}
   </option>
</c:forEach>
</select><br>
Author:
<select name="author_id">
<c:forEach items="${requestScope.auth}" var="a">
    <option 
       <c:if test="${a.author_id eq requestScope.book.author.author_id}">
           selected="selected"
       </c:if> value="${a.author_id}">${a.name}
   </option>
</c:forEach>
</select><br>-->