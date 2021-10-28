<%-- 
    Document   : insert
    Created on : Oct 22, 2021, 4:28:29 PM
    Author     : Tebellum
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        </style>
    </head>
    <body>                

        <div class="container">
            <div class="left">
                   <h2 style="margin-top: 5px">Insert Book</h2>
                <form action="insert" method="POST">
                    <table>
                        <tr>
                            <td>
                        <tr>
                            <td>Book Name</td>
                            <td>
                                <!--<input name="book_name" type="text" >-->
                                <textarea id="description" name="book_name" rows="1" cols="50"></textarea></td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><textarea id="description" name="description" rows="10" cols="80"></textarea></td>
                        </tr>
                        <tr>
                            <td>Short description</td>
                            <td><textarea id="short_des" name="short_des" rows="8" cols="80"></textarea></td>
                        </tr>
                        <tr>
                            <td>Url Imagin</td>
                            <td><textarea id="short_des" name="url_img" rows="3" cols="80"></textarea></td>
                        </tr>
                        <tr>
                            <td>Author name</td>
                            <td><select name="author_id">
                                    <c:forEach items="${requestScope.auth}" var="a">
                                        <option value="${a.author_id}">${a.name}</option>
                                    </c:forEach>
                                </select></td>
                        </tr>
                        <tr>
                            <td> Category</td>
                            <td><select name="category_id">
                                    <c:forEach items="${requestScope.cates}" var="c">
                                        <option value="${c.category_id}">${c.category_name}</option>
                                    </c:forEach>
                                </select></td>
                        </tr>
                        </td>
                        </tr>

                    </table>
                    <input name="submit" type="submit" value="save" >
                </form>
            </div>
            <div class="right">
                <jsp:include page="insert_category_author.jsp"></jsp:include>
                </div>
            </div>
        </body>
    </html>


    <!--            Book Name:<input name="book_name" type="text" ><br>
                Description:<br>
                <input name="description" type="text" ><br>
                <textarea id="description" name="description" rows="10" cols="70"></textarea><br>
                Short description:<br>
                <input name="short_des" type="text" ><br>
                <textarea id="short_des" name="short_des" rows="10" cols="70">
                </textarea><br>
                Author name:
                <select name="author_id">
<c:forEach items="${requestScope.auth}" var="a">
    <option value="${a.author_id}">${a.name}</option>
</c:forEach>
</select><br>
Category:
<select name="category_id">
<c:forEach items="${requestScope.cates}" var="c">
    <option value="${c.category_id}">${c.category_name}</option>
</c:forEach>
</select><br>
<input name="submit" type="submit" value="save" >-->