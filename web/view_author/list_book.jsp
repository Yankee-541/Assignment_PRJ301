<%-- 
    Document   : list_book
    Created on : Oct 23, 2021, 4:46:07 PM
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
            table {
                border-collapse: collapse;
                width: 90%;
                margin: 0 auto;
            }
            .center{
                text-align: center;
            }
            tr, td {
                border: 1px solid black;
            }
            img{
                width: 20px;
                height: 20px;
            }
        </style>
    </head>
    <body>
        <table>
            <tr class="center">
                <td>Book ID</td>
                <td>Book name</td>
                <td>Author</td>
                <td>Category book</td>
            </tr>
            <c:forEach items="${requestScope.books}" var="b">
                <tr>
                    <td class="center">${b.book_id}</td>
                    <td>${b.book_name}</td>
                    <td>${b.author.name}</td>
                    <td class="center">${b.category.category_name}</td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
